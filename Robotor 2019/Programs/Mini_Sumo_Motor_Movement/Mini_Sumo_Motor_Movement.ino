#define ENB PB5
#define M2IN1 PB6
#define M2IN2 PB7

#define Button PA8

#define ENA PB4
#define M1IN1 PB3
#define M1IN2 PA15

void setup() {
  // put your setup code here, to run once:
  pinMode(ENB, OUTPUT);
  pinMode(M2IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);

  pinMode(ENA, OUTPUT);
  pinMode(M1IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);
    
  pinMode(Button, INPUT_PULLUP);
  
}

int lastButtonState = digitalRead(Button);
int buttonState = digitalRead(Button);
int idleState = 1;

void loop() {
  // put your main code here, to run repeatedly:
  Start();

  if(!idleState){
    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 500);
    analogWrite(M2IN2, 0);

    digitalWrite(ENA, HIGH);
    analogWrite(M1IN1, 500);
    analogWrite(M1IN1, 0);
  }
  else {
    digitalWrite(ENA, LOW);
    digitalWrite(ENB, LOW);
  }
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
