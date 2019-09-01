
#define ENA 12
#define ENB 8

#define M1IN1 13
#define M1IN2 10

#define M2IN1 6
#define M2IN2 9

#define BTN 5
#define BTN2 4

int sensor[4] = {A5, A4, A3, A2};
int index1[5];
int s[4];

int x = 0;
int lastButtonState = 0;
int buttonState = 0;

int x2 = 0;
int lastButtonState2 = 0;
int buttonState2 = 0;

void setup() {
  // put your setup code here, to run once:
  for(int i = 0; i < 4; i++)
    pinMode(sensor[i], INPUT);

  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);
  pinMode(M1IN1, OUTPUT);
  pinMode(M1IN2, OUTPUT);
  pinMode(M2IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);

  pinMode(BTN, INPUT_PULLUP);
  pinMode(BTN2, INPUT_PULLUP);

  lastButtonState = digitalRead(BTN);
  lastButtonState2 = digitalRead(BTN2);
}

void loop() {
  // put your main code here, to run repeatedly:
  int Speed = 40;
  float d = error();
  
  Start();
  if(x){
    if(analogRead(sensor[1]) > 500 && analogRead(sensor[2]) > 500){
      setLeftSpeed(Speed);
      setRightSpeed(Speed);
    }
    else if(analogRead(sensor[1]) > 500){
      setLeftSpeed(Speed - 10);
      setRightSpeed(Speed);
    }
    else{
      setLeftSpeed(Speed);
      setRightSpeed(Speed - 10);
    }
  }
}

void Start(void){
  buttonState = digitalRead(BTN);
  if(buttonState != lastButtonState)
    if(buttonState == LOW){
      x = !x;
    }
    lastButtonState = buttonState;
  delay(50);
}

void Start2(void){
  buttonState2 = digitalRead(BTN2);
  if(buttonState2 != lastButtonState2)
    if(buttonState2 == LOW){
      x2 = !x2;
    }
    lastButtonState2 = buttonState2;
  delay(50);
}

void setLeftSpeed(int Speed){
  if(Speed == 0)
    digitalWrite(ENA, LOW);
  else digitalWrite(ENA, HIGH);

  if(Speed > 0){
    analogWrite(M1IN1, Speed);
    analogWrite(M1IN2, 0);
  }
  else if(Speed < 0){
    analogWrite(M1IN1, 0);
    analogWrite(M1IN2, Speed);
  }
}

void setRightSpeed(int Speed, int err){
  Speed = PID(Speed, err);
  
  if(Speed == 0)
    digitalWrite(ENB, LOW);
  else digitalWrite(ENB, HIGH);

  if(Speed > 0){
    analogWrite(M2IN1, Speed);
    analogWrite(M2IN2, 0);
  }
  else if(Speed < 0){
    analogWrite(M2IN1, 0);
    analogWrite(M2IN2, Speed);
  }
}

void Finding(void){
  int n = 0;

  for(int i = 0; i < 4; i++)
    s[i] = analogRead(sensor[i]);
  
  memset(index1, 0, sizeof(index1)); /* Seteaza toate valorile vectorului index1 cu valoarea celui de-al doilea parametru, 0 in cazul acesta */
  
  for(int i = 0; i < 4; i++){   
    if(s[i] > 500){ /* Daca valoarea citita de sensori este mai mare ca 2500 se memoreaza valoarea si indicele lui in vectorul valori, respectiv index1 */  
      index1[n] = i+1; /* Se retin pozitia + 1 pentru conditia de la "for" din functia "error" de sub, deoarece i incepe de la 0 */
      n++;
    }
  }
   
}

float error(void){
    Finding();
    
    int n = 0;
    int sum = 0;
    float Ma = 0.0;
    for(int i = 0; index1[i] != 0 && i < 4; i++){
      sum += index1[i];
      n++;
    }
    Ma = float(sum)/n;
  
    return(Ma-2.5);   
}

int PID(int Speed, int err){
  
}
