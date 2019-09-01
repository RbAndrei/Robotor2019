
#define ECHOPIN 3        // Pin to receive echo pulse

#define TRIGPIN 2        // Pin to send trigger pulse

#define ENA 12
#define ENB 8

#define M1IN1 13
#define M1IN2 10

#define M2IN1 6
#define M2IN2 9

#define BTN 5
#define BTN2 4

int sensor[4] = {A5, A4, A3, A2};

/*
 * setup function
 * Initialize the serial line (D0 & D1) at 115200.
 * Then set the pin defined to receive echo in INPUT 
 * and the pin to trigger to OUTPUT.
 */

int x = 0;
int lastButtonState = 0;
int buttonState = 0;
 
void setup()
{
  Serial.begin(115200);
  pinMode(ECHOPIN, INPUT);
  pinMode(TRIGPIN, OUTPUT);
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
}

/*
 * loop function.
 * 
 */
void loop()
{
  // Start Ranging
  digitalWrite(TRIGPIN, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIGPIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIGPIN, LOW);
  // Compute distance
  float distance = pulseIn(ECHOPIN, HIGH);
  distance= distance/58;
  Serial.print(distance);
  Serial.print(" Line Sensors ");
  for(int i = 0; i < 4; i++){
    Serial.print(analogRead(sensor[i]));
    Serial.print(" ");
  }
  Serial.print("");
  delay(200);

  Start();

  if(x){
    digitalWrite(ENA, HIGH);
    analogWrite(M1IN1, 40);
    analogWrite(M1IN2, 0);

    digitalWrite(ENB, HIGH);
    analogWrite(M2IN1, 40);
    analogWrite(M2IN2, 0);
  }else{
    digitalWrite(ENA, LOW);
    digitalWrite(ENB, LOW);
  }

  Serial.print(x); Serial.print(" "); Serial.println(digitalRead(BTN)); Serial.print(" "); Serial.println(digitalRead(BTN2));
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
