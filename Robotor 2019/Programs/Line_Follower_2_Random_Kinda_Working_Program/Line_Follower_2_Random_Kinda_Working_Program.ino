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

float speedA = 0; /* Deoarece nu exista pinul 0 pe Arduino(incep de la 1) variabilelor le poate fi data valoarea 0, nefiind considerat pin */
float speedB = 0;


int buttonState = 0;
int lastbuttonState = 0;
int x = 0;
float d = 0;
float d2 = 0;
float d3 = 0;
double kp = 0;
double kd = 0;
double ki = 0;
int Speed = 0;
int index1[11];
int s[10];
int valori[10];
int curba0 = 0;
int curba = 0;
int curba2 = 0;
int curba3 = 0;
int curba4 = 0;

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


for(int i = 0; i<10; i++){
  s[i] = analogRead(sensor[i]); /* Citim valorile sensorilor si le punem intr-un vecctor */
  delay(1); /* Delay de 1 milisecunda penru stabilitate */
}
  d2 = d;
  d = error();
  
  //Serial.print(d); Serial.print(" ");Serial.print(d2);Serial.println(" ");
  if(isnan(d))
    d = d2;

  Speed = 150;
  kp = 39.5; //39.5
  kd = 125; //100
  ki = 0; //0
  curba0 = 10;
  curba = 15;
  curba2 = 20;
  curba3 = 25;
  curba4 = 30;
  /*if(abs(d) >= 3)
    ki = 0.35;*/
   //Serial.println(Speed);
   
   /* Formula de reglare PID */
   speedA = Speed + ((kp*d)+(kd*(d-d2))+(ki*(d+d2)));
   speedB = Speed - ((kp*d)+(kd*(d-d2))+(ki*(d+d2)));

   /* Daca valoare vitezei trece peste 255 atunci arduino o scade cu 255 si pune valoarea rezultata ca viteza motoarelor */
   
     if(abs(d) > 3){
       if(speedA < speedB)
         speedA -= curba4;
       else if(speedB < speedA)
         speedB -= curba4;}
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
  //Serial.print(speedA); Serial.print(" "); Serial.println(speedB);

  if(speedA > 255)
    speedA = 255;
  if(speedB > 255)
    speedB = 255;
  if(speedA < -255)
    speedA = -255;
  if(speedB < -255)
    speedB = -255;
    
  Start();
  
  if(x == 1){
    if(speedB > 0){
      analogWrite(BIN2, abs(speedB));
      analogWrite(BIN1, 0);
      digitalWrite(ENB, HIGH);
    }
    else{
      analogWrite(BIN2, 0);
      analogWrite(BIN1, abs(speedB));
      digitalWrite(ENB, HIGH);
    }
 
    
    if(speedA < 0){
      analogWrite(AIN1, abs(speedA));
      analogWrite(AIN2, 0);
      digitalWrite(ENA, HIGH);
    }
    else{
      analogWrite(AIN1, 0);
      analogWrite(AIN2, abs(speedA));
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
  digitalWrite(LED2, HIGH); 
    if (buttonState != lastbuttonState){
      if (buttonState == LOW){
        x = !x;
        if(x){
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
void Finding(void){
  int n = 0;
  memset(index1, 0, sizeof(index1)); /* Seteaza toate valorile vectorului index1 cu valoarea celui de-al doilea parametru, 0 in cazul acesta */
  
  //memset(valori, 0, sizeof(valori));
  
  for(int i = 0; i < 10; i++){
    
    //Serial.print(s[i]); Serial.print(" "); Serial.print(i); Serial.print(" ");
    
    if(s[i] > 2500){ /* Daca valoarea citita de sensori este mai mare ca 2500 se memoreaza valoarea si indicele lui in vectorul valori, respectiv index1 */
      
      //valori[n] = s[i];
      //Serial.print(valori[n]); Serial.print(" ");
      
      index1[n] = i+1; /* Se retin pozitia + 1 pentru conditia de la "for" din functia "error" de sub, deoarece i incepe de la 0 */
      
      //Serial.print(index1[n]); Serial.print(" ");
      
      n++;
    }
  }
    //Serial.println();
}

float error(void){
    Finding();
    /* Se face media aritmetica a pozitiilor valorilor mai mari de 550 si se returneaza rezultatul minus 4.5, 
       deoarece aceia este mijlocul senzorului, intre pozitiile 4 si 5 */
    
    int n = 0;
    int sum = 0;
    float Ma = 0.0;
    for(int i = 0; index1[i] != 0 && i < 10; i++){
      sum += index1[i];
      n++;
      //Serial.print(index1[i]); Serial.print(" ");
    }
    //Serial.println();
    Ma = float(sum)/n;
    //Serial.print(Ma); Serial.print(" ");Serial.print(sum); Serial.print(" ");Serial.print(n); Serial.println(" ");
    return(Ma-5.5);   
}
