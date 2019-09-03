
#define ENA 12
#define ENB 8

#define M1IN1 13
#define M1IN2 10

#define M2IN1 6
#define M2IN2 9

#define BTN 5
#define BTN2 4

int x = 0;
int lastButtonState = 0;
int buttonState = 0;

int x2 = 0;
int lastButtonState2 = 0;
int buttonState2 = 0;

void setup() {
  // put your setup code here, to run once:
  
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
  Start();

  if(x){
    digitalWrite(ENA, HIGH);
    analogWrite(M1IN1, 0);
    analogWrite(M1IN2, -20);

    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 20);
    analogWrite(M2IN2, 0);
  }
  else{
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
