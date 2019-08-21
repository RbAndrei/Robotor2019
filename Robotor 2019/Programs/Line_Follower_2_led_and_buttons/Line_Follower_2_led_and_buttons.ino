#define LED1 PB10
#define LED2 PB11
#define BTN1 PB9
#define BTN2 PA8

void setup() {
  // put your setup code here, to run once:
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(BTN1, INPUT_PULLUP);
  pinMode(BTN2, INPUT_PULLUP);

  Serial.begin(9600);
}

int lastButtonState1 = digitalRead(BTN1);
int lastButtonState2 = digitalRead(BTN2);
int buttonState1 = lastButtonState1;
int buttonState2 = lastButtonState2;
bool LED1_State, LED2_State = false;

void loop() {
  // put your main code here, to run repeatedly:
  buttonState1 = digitalRead(BTN1);
  buttonState2 = digitalRead(BTN2);
  
  if(buttonState1 != lastButtonState1){
    if(buttonState1 == HIGH)
      LED1_State = !LED1_State;
    delay(50);
  }
  lastButtonState1 = buttonState1;

  if(!LED1_State)
    digitalWrite(LED1, LOW);
  else digitalWrite(LED1, HIGH);
  
  if(buttonState2 != lastButtonState2){
    if(buttonState2 == HIGH)
      LED2_State = !LED2_State;
    delay(50);
  }
  lastButtonState2 = buttonState2;

  if(!LED2_State)
    digitalWrite(LED2, LOW);
  else digitalWrite(LED2, HIGH);
}
