 int sensor[10] = {PA0, PA1, PA2, PA3, PA4, PA5, PA6, PA7, PB0, PB1}; /* Desemnam pinii sensorilor de pe Arduino, pot fi notati fi cu A0-A7 fie cu 18-25, au si alte notatii */
 #define S11 PB8

 #define LED1 PB11
 #define LED2 PB10

 #define Button PB9

  int buttonState = 0;
  int lastbuttonState = 0;
  int sensorValue1;
  int sensorValue2;
  int sensorValue3;
  int sensorValue4;
  int sensorValue5;
  int sensorValue6;
  int sensorValue7;
  int sensorValue8;
  int sensorValue9;
  int sensorValue90;
  int sensorDigital;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(Button, INPUT_PULLUP);/* "INPUT_PULLUP" desemneaza pinul ca fiind de input si il seteaza ca fiind "HIGH" */
  lastbuttonState = digitalRead(Button);
  for(int i = 0; i<10; i++)
    pinMode(sensor[i], INPUT_ANALOG);

  pinMode(S11, INPUT);

  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
}

int index1[11];
int s[10];
int x = 0;

void loop() {
  // put your main code here, to run repeatedly:

  sensorValue1 = analogRead(sensor[0]);
  sensorValue2 = analogRead(sensor[1]);
  sensorValue3 = analogRead(sensor[2]);
  sensorValue4 = analogRead(sensor[3]);
  sensorValue5 = analogRead(sensor[4]);
  sensorValue6 = analogRead(sensor[5]);
  sensorValue7 = analogRead(sensor[6]);
  sensorValue8 = analogRead(sensor[7]);
  sensorValue9 = analogRead(sensor[8]);
  sensorValue90 = analogRead(sensor[9]);
  sensorDigital = digitalRead(S11);

  
  /*if(x >= 10)
    x = 0;

  for(x = 0; x < 10; x++){
    sensorValue = analogRead(sensor[x]);
    
    if(analogRead(sensor[x]) > 200){
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, HIGH);
    }
    else{
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
    }
  }*/
  
}

void Start(void){
  /* Citim starea butonului si daca este diferita de starea anterioara si are valoarea "LOW" se seteaza x ca !x */
  buttonState = digitalRead(Button);
    if (buttonState != lastbuttonState){
      if (buttonState == LOW){
        x++;
       }
       delay(50);
     }
     /* Se updateaza valoarea anterioara */
     lastbuttonState = buttonState;    
}

void Finding(void){
  int n = 0;
  memset(index1, 0, sizeof(index1)); /* Seteaza toate valorile vectorului index1 cu valoarea celui de-al doilea parametru, 0 in cazul acesta */
  
  //memset(valori, 0, sizeof(valori));
  
  for(int i = 0; i < 10; i++){
    
    //Serial.print(s[i]); Serial.print(" "); Serial.print(i); Serial.print(" ");
    
    if(s[i] > 500){ /* Daca valoarea citita de sensori este mai mare ca 550 se memoreaza valoarea si indicele lui in vectorul valori, respectiv index1 */
      
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
