#define M1IN1 PB7
#define M1IN2 PB6
#define M2IN1 PA9
#define M2IN2 PA10
#define ENA PB5
#define ENB PC13
#define BTN1 PB9
#define LED1 PB10
#define LED2 PB11

void setup() {
  // put your setup code here, to run once:
  pinMode(M1IN1, OUTPUT);
  pinMode(M1IN2, OUTPUT);
  pinMode(M2IN1, OUTPUT);
  pinMode(M2IN2, OUTPUT);
  pinMode(ENA, OUTPUT);
  pinMode(ENB, OUTPUT);
  pinMode(BTN1, INPUT_PULLUP);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
}

int lastButtonState = digitalRead(BTN1);
int buttonState = lastButtonState;
int x = 0;
<<<<<<< HEAD
=======
float y = 2390.21;
double z = 502.57;
long int a = 1203;
short m = 29;

>>>>>>> 7664a01938009c8ba603cac55e0d99415c4fcbd9

void loop() {
  // put your main code here, to run repeatedly:

  start();

  if(x){
    digitalWrite(ENA, HIGH);
<<<<<<< HEAD
    analogWrite(M1IN1, 0);
    analogWrite(M1IN2, 50);
    
    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 0);
    analogWrite(M2IN2, 50);
=======
    analogWrite(M1IN1, 200);
    analogWrite(M1IN2, 0);
    
    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 0);
    analogWrite(M2IN2, 200);
>>>>>>> 7664a01938009c8ba603cac55e0d99415c4fcbd9

    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
  }
  else{
    digitalWrite(ENA, LOW);
    analogWrite(M1IN1, 0);
    analogWrite(M1IN2, 0);

    digitalWrite(ENB, LOW);
    analogWrite(M2IN1, 0);
    analogWrite(M2IN2, 0);

    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
  }
}

void start(void){
  buttonState = digitalRead(BTN1);
  if(buttonState != lastButtonState){
    if(buttonState == LOW)
      x = !x;
    delay(50);
  }
  lastButtonState = buttonState;

}
