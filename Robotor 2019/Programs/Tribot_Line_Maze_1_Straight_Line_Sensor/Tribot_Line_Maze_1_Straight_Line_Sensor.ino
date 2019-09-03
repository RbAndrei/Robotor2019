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
  Serial.begin(9600);
  
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
  int Speed = 21;

  for(int i = 0; i < 4; i++)
    s[i] = analogRead(sensor[i]);
  
  Start();
  
  if(x){
    setLeftSpeed(Speed);
    setRightSpeed(Speed);    
  }
  else {
    digitalWrite(ENA, LOW);
    digitalWrite(ENB, LOW);
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
  int motorIndex = -1;
  Speed = PID(Speed, motorIndex);
  
  //Serial.print(Speed); Serial.print(" ");
  
  if(Speed == 0)
    digitalWrite(ENA, LOW);
  else digitalWrite(ENA, HIGH);

  if(Speed > 0){
    analogWrite(M1IN1, Speed);
    analogWrite(M1IN2, 0);
  }
  else if(Speed < 0){
    analogWrite(M1IN1, 0);
    analogWrite(M1IN2, -Speed);
  }
}

void setRightSpeed(int Speed){
  int motorIndex = 1;
  Speed = PID(Speed, motorIndex);
  
  //Serial.println(Speed);
  
  if(Speed == 0)
    digitalWrite(ENB, LOW);
  else digitalWrite(ENB, HIGH);

  if(Speed > 0){
    analogWrite(M2IN1, Speed);
    analogWrite(M2IN2, 0);
  }
  else if(Speed < 0){
    analogWrite(M2IN1, 0);
    analogWrite(M2IN2, -Speed);
  }
}

float d;
float d2, n;

int PID(int Speed, int motorIndex){

  float kp = 0.2;
  float kd = 0;
  float ki = 0;
  
  if(s[1] < 100 || s[2] < 100)
    n = 0.0/0;
  else n = 0;

  if(s[1] < 900)
    d = (s[1] - 900) / 50;
  else if(s[1] >= 900)
    d = (s[1] - 900) / 2;
  else d = 0;

  
  if(isnan(n))
    d = d2;

  //Serial.print(d); Serial.print(" "); Serial.print(s[1]); Serial.print(" "); Serial.print(s[2]); Serial.print(" "); Serial.print(s[1] < 100 || s[2] < 100); Serial.print(isnan(n));
  //Serial.println("");

  if(motorIndex == 1)
    Speed += kp * d + (kd*(d - d2)) + (ki*(d+d2));
  else Speed -= kp * d + (kd*(d - d2)) + (ki*(d+d2));

  Serial.println(Speed);
  
  d2 = d;

  return Speed;
}
