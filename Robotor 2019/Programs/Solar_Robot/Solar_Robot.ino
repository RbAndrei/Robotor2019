#include <math.h>

#define AIN1 9
#define AIN2 10

#define BIN1 5
#define BIN2 6

#define Button 2 /*  Se creeaza valori carora le alocam pini, aceeiasi chestie cu "int Button = 13;"*/

int sensor[4] = {A0, A2, A1, A3}; /* Desemnam pinii sensorilor de pe Arduino, pot fi notati fi cu A0-A7 fie cu 18-25, au si alte notatii */

float speedA = 0; /* Deoarece nu exista pinul 0 pe Arduino, incep de la 1, variabilelor le poate fi data valoarea 0, nefiind considerat pin */
float speedB = 0;


int buttonState = 0;
int lastbuttonState = 0;
int x = 0;
float d = 0;
float d2 = 0;
double kp = 0;
double kd = 0;
double ki = 0;
int Speed = 0;
int index1[5];
int s[4];
int curba0 = 0;
int curba = 0;
int curba2 = 0;
int curba3 = 0;
int curba4 = 0;

void setup() {
  pinMode(AIN1, OUTPUT);
  pinMode(AIN2, OUTPUT);
  pinMode(BIN1, OUTPUT);
  pinMode(BIN2, OUTPUT);
  pinMode(Button, INPUT_PULLUP);/* "INPUT_PULLUP" desemneaza pinul ca fiind de input si il seteaza ca fiind "HIGH" */
  lastbuttonState = digitalRead(Button);
  for (int i = 0; i < 4; i++)
    pinMode(sensor[i], INPUT);

  Serial.begin(9600);
}

void loop() {


  for (int i = 0; i < 4; i++) {
    s[i] = analogRead(sensor[i]); /* Citim valorile sensorilor si le punem intr-un vecctor */
    delay(1); /* Delay de 1 milisecunda penru stabilitate */
  }

  Speed = 60;

  kp = 20;
  kd = 10;
  ki = 3;
  curba0 = 10;
  curba = 15;
  curba2 = 20;
  curba3 = 25;
  curba4 = 30;


  d2 = d;
  d = error();

  //Serial.print(d); Serial.print(" ");Serial.print(d2);Serial.println(" ");
  if (isnan(d))
    d = d2;

  /* Formula de reglare PID */
  speedA = Speed + ((kp * d) + (kd * (d - d2)) + (ki * (d + d2)));
  speedB = Speed - ((kp * d) + (kd * (d - d2)) + (ki * (d + d2)));

  /* Daca valoare vitezei trece peste 255 atunci arduino o scade cu 255 si pune valoarea rezultata ca viteza motoarelor */

  if (speedA > 255)
    speedA = 255;
  if (speedB > 255)
    speedB = 255;

  if (speedA < -255)
    speedA = -255;
  if (speedB < -255)
    speedB = -255;

  //Serial.print(speedA); Serial.print(" "); Serial.println(speedB);
  if (speedB > 0) {
    analogWrite(BIN2, abs(speedB));
    analogWrite(BIN1, 0);
  }
  else {
    analogWrite(BIN2, 0);
    analogWrite(BIN1, abs(speedB));
  }

  if (speedA < 0) {
    analogWrite(AIN1, abs(speedA));
    analogWrite(AIN2, 0);
  }
  else {
    analogWrite(AIN1, 0);
    analogWrite(AIN2, abs(speedA));
  }
}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


void Start(void) {
  /* Citim starea butonului si daca este diferita de starea anterioara si are valoarea "LOW" se seteaza x ca !x */
  buttonState = digitalRead(Button);
  if (buttonState != lastbuttonState) {
    if (buttonState == LOW) {
      x = !x;
      if (x) {
        delay(1000);
        //Serial.println(x);
      }
    }
  }
  /* Se updateaza valoarea anterioara */
  lastbuttonState = buttonState;

}

void Finding(void) {
  int n = 0;
  memset(index1, 0, sizeof(index1)); /* Seteaza toate valorile vectorului index1 cu valoarea celui de-al doilea parametru, 0 in cazul acesta */

  //memset(valori, 0, sizeof(valori));

  for (int i = 0; i < 4; i++) {

    //Serial.print(s[i]); Serial.print(" "); Serial.print(i); Serial.print(" ");

    if (s[i] > 400) { /* Daca valoarea citita de sensori este mai mare ca 2500 se memoreaza valoarea si indicele lui in vectorul valori, respectiv index1 */

      //valori[n] = s[i];
      //Serial.print(valori[n]); Serial.print(" ");

      index1[n] = i + 1; /* Se retin pozitia + 1 pentru conditia de la "for" din functia "error" de sub, deoarece i incepe de la 0 */

      //Serial.print(index1[n]); Serial.print(" ");

      n++;
    }
  }
  //Serial.println();
}

float error(void) {
  Finding();
  /* Se face media aritmetica a pozitiilor valorilor mai mari de 550 si se returneaza rezultatul minus 4.5,
     deoarece aceia este mijlocul senzorului, intre pozitiile 4 si 5 */

  int n = 0;
  int sum = 0;
  float Ma = 0.0;
  for (int i = 0; index1[i] != 0 && i < 4; i++) {
    sum += index1[i];
    n++;
    //Serial.print(index1[i]); Serial.print(" ");
  }
  //Serial.println();
  Ma = float(sum) / n;
  //Serial.print(Ma); Serial.print(" ");Serial.print(sum); Serial.print(" ");Serial.print(n); Serial.println(" ");
  return (Ma - 2.5);
}
