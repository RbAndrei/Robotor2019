#define ENB PB5
#define SELB PB8
#define M2IN1 PB6
#define M2IN2 PB7

#define Button PA8

#define ENA PC13
#define SELA PB9
#define M1IN1 PA9
#define M1IN2 PA10

#define S1 PA1
#define S2 PA0

#define ES1 PA2
#define ES2 PA3
#define ES3 PA4
#define ES4 PA5
#define ES5 PA6

void setup() {
  // put your setup code here, to run once:
  pinMode(ENB, OUTPUT);
  pinMode(SELB, OUTPUT);
  pinMode(M2IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);

  pinMode(ENA, OUTPUT);
  pinMode(SELA, OUTPUT);
  pinMode(M1IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);
    
  pinMode(Button, INPUT_PULLUP);

  pinMode(S1, INPUT);
  pinMode(S2, INPUT);
  pinMode(ES1, INPUT);
  pinMode(ES2, INPUT);
  pinMode(ES3, INPUT);
  pinMode(ES4, INPUT);
  pinMode(ES5, INPUT);
}

int lastButtonState = digitalRead(Button);
int buttonState = 0;
int idleState = 1;

  int value1 = analogRead(S1);
  int value2 = analogRead(S2);
  int distancevalue1 = digitalRead(ES1);
  int distancevalue2 = digitalRead(ES2);
  int distancevalue3 = digitalRead(ES3);
  int distancevalue4 = digitalRead(ES4);
  int dsitancevalue5 = digitalRead(ES5);

void loop() {
  // put your main code here, to run repeatedly:
  Start();

  value1 = analogRead(S1);
  value2 = analogRead(S2);
  distancevalue1 = digitalRead(ES1);
  distancevalue2 = digitalRead(ES2);
  distancevalue3 = digitalRead(ES3);
  distancevalue4 = digitalRead(ES4);
  dsitancevalue5 = digitalRead(ES5);

    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 100);
    analogWrite(M2IN2, 0);

    digitalWrite(ENA, HIGH);
    analogWrite(M1IN1, 255);
    analogWrite(M1IN2, 0);
}

void Start(void){
  buttonState = digitalRead(Button);
  
  if(buttonState != lastButtonState){
    if(buttonState == LOW)
       idleState = !idleState;
     delay(50);
    lastButtonState = buttonState;
  }
}
