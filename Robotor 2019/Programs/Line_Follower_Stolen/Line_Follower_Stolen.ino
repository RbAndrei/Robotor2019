#include<math.h>

#define LED1 PB11
#define LED2 PB10
#define Button PB9 /*  Se creeaza valori carora le alocam pini, aceeiasi chestie cu "int Button = 13;"*/
#define AIN2 PB6 /* Fiecare variabila careia i se atribuie o valoare in afara unei functii, valoarea ei este considerata ca fiind numarul pinului */ 
#define AIN1 PB7
#define BIN2 PA10  // intrarile de la motoare
#define BIN1 PA9 
#define ENA PB5  //seteaza viteza motoarelor
#define ENB PC13


int sensor[10] = {PA0, PA1, PA2, PA3, PA4, PA5, PA6, PA7, PB0, PB1}; /* Desemnam pinii sensorilor de pe Arduino, pot fi notati fi cu A0-A7 fie cu 18-25, au si alte notatii */
int sensorValues[10]={200, 170, 170, 170, 170, 170, 170, 170, 170 , 170};

/*float speedA = 0; /* Deoarece nu exista pinul 0 pe Arduino, incep de la 1, variabilelor le poate fi data valoarea 0, nefiind considerat pin */
//float speedB = 0;

float sensorValue[10];
float sensorValueMin[10] = {1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024};
float sensorValueMax[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
float threshold[10] = {10, 10, 10, 10, 10, 10, 10, 10, 10, 10};
float sensorValueAvg[10] = {512, 512, 512, 512, 512, 512, 512, 512, 512, 512};
boolean digitalValue[10];
short error = 0;

int buttonState = 0;
int lastbuttonState = 0;
int x = 0;
/*float d = 0;
float d2 = 0;
float d3 = 0;
double kp = 0;
double kd = 0;
double ki = 0;
int Speed = 0;
int curba0 = 0;
int curba = 0;
int curba2 = 0;
int curba3 = 0;
int curba4 = 0;*/
int SPD = 30;
float PID;
float kp = 60, ki = 35 , kd= 27;
float last_error, integ, deriv;
void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(AIN1, OUTPUT);
  pinMode(AIN2, OUTPUT);
  pinMode(BIN1, OUTPUT);
  pinMode(BIN2, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);
  pinMode(Button, INPUT_PULLUP);/* "INPUT_PULLUP" desemneaza pinul ca fiind de input si il seteaza ca fiind "HIGH" */
  lastbuttonState = digitalRead(Button);
  for(int i = 0; i<10; i++)
    pinMode(sensor[i], INPUT_ANALOG);

  digitalWrite(LED1, HIGH);
  
  Serial.begin(9600);
  
  /*kp = 39.5;
    kd = 84;
    ki = 0;
    curba0 = 10;
    curba = 15;
    curba2 = 20;
    curba3 = 25;
    curba4 = 30;
  */
}


void loop() {

  updateSensor();
  updateMinMax();
  PID = error *kp+integ*ki+deriv*kd;
  integ+=error;
  deriv=error-last_error;
  last_error=error;
    
  /*d2 = d;
  d = calculateError();

  if(isnan(d) || d == 0)
    digitalWrite(LED2, HIGH);
  else digitalWrite(LED2, LOW);

  
  //Serial.print(d); Serial.print(" ");Serial.print(d2);Serial.println(" ");
  if(isnan(d))
    d = d2;

  Speed = 30;
  kp = 10;
  kd = 0;
  ki = 0;

  if(abs(d) >= 3)
    ki = 0;
   //Serial.println(Speed);
   
   /* Formula de reglare PID */
   /*speedA = Speed - ((kp*d)+(kd*(d-d2))+(ki*(d+d2)));
   speedB = Speed + ((kp*d)+(kd*(d-d2))+(ki*(d+d2)));

    speedA = d*10;
    speedB = d*10;
    */

   /* Daca valoare vitezei trece peste 255 atunci arduino o scade cu 255 si pune valoarea rezultata ca viteza motoarelor */
   
     /*if(abs(d) > 3){
       if(speedA < speedB)
         speedA -= curba4;
       else if(speedB < speedA)
         speedB -= curba4; 
     }
     else if(abs(d) > 2.5){
      if(speedA < speedB)
        speedA -= curba3;
      else if(speedB < speedA)
        speedB -= curba3;
     }else if(abs(d) > 2){
      if(speedA < speedB)
        speedA -= curba2;
      else if(speedB < speedA)
        speedB -= curba2;
     }else if(abs(d) > 1.5){
      if(speedA < speedB)
        speedA -= curba;
      else if(speedB < speedA)
        speedB -= curba;
     }else if(abs(d) > 1){
      if(speedA < speedB)
        speedA -= curba0;
      else if(speedB < speedA)
        speedB -= curba0;
     }
   if(speedA > 255)
      speedA = 255;
     else if(speedB > 255)
      speedB = 255;
  
     if(speedA < -255)
      speedA = -255;
     else if (speedB < -255)
      speedB = -255;*/
  //Serial.print(speedA); Serial.print(" "); Serial.println(speedB);
    
  Start();
  
  if(x == 1){
    if(SPD+PID > 0){
      analogWrite(BIN2, abs(SPD+PID));
      analogWrite(BIN1, 0);
      digitalWrite(ENB, HIGH);
    }
    else{
      analogWrite(BIN2, 0);
      analogWrite(BIN1, abs(SPD+PID));
      digitalWrite(ENB, HIGH);
    }
 
    
    if(SPD-PID < 0){
      analogWrite(AIN1, abs(SPD-PID));
      analogWrite(AIN2, 0);
      digitalWrite(ENA, HIGH);
    }
    else{
      analogWrite(AIN1, 0);
      analogWrite(AIN2, abs(SPD-PID));
      digitalWrite(ENA, HIGH);
    }
  }
  else {
    digitalWrite(ENB, LOW);
    digitalWrite(ENA, LOW);
  }
}


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


void Start(void){
  /* Citim starea butonului si daca este diferita de starea anterioara si are valoarea "LOW" se seteaza x ca !x */
  buttonState = digitalRead(Button);
    if (buttonState != lastbuttonState){
      if (buttonState == LOW){
        x = !x;
        if(x){ 
          digitalWrite(LED2, HIGH); 
          //Calibrating();
          digitalWrite(LED2, LOW);
          delay(1000);
          //Serial.println(x);
        }
       }
     }
     /* Se updateaza valoarea anterioara */
     lastbuttonState = buttonState;
     
}
/*
void Calibrating(){
  int i=0;
  long int calibrationStartTime = millis();
  int sensorMax = 0;
  int sensorMin = 1023;
  while(millis() - calibrationStartTime < 5000){
      int sensorValue = analogRead(sensor[i]);
      if(sensorValue < sensorMin)
        sensorValues[i].MIN = sensorValue;
      else if(sensorValue > sensorMax)
        sensorValues[i].MAX = sensorValue;
      if(i<10)
      i++;
      else
      i=0;
  }
}
*/

void calculateError(){
  error = 0;
  short sum = 0;
  for (short i = 0; i < 10; i++)
  {
    sum += digitalValue[i];
    error += digitalValue[i] * (i + 1);
  }
  error / sum - 6;
}

void updateSensor()
{
  for (short i = 0; i < 10; i++)
  {
    sensorValue[i] = analogRead(sensor[i]);
    digitalValue[i] = sensorValue[i] > (sensorValueAvg[i] + threshold[i]);
  }
}
void updateMinMax()
{
  for (short i = 0; i < 10; i++)
  {
    sensorValueMin[i] = sensorValue[i] < sensorValueMin[i] ? sensorValue[i] : sensorValueMin[i];
    sensorValueMax[i] = sensorValue[i] > sensorValueMax[i] ? sensorValue[i] : sensorValueMax[i];
    sensorValueAvg[i] = (sensorValueMin[i] + sensorValueMax[i]) / 2; // update the avarage value
    threshold[i] = (sensorValueMax[i] - sensorValueMax[i]) * 0.1; // Threshold is 10% of total sensor range
  }
}
