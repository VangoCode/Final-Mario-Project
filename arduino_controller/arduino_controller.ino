int upButtonPin = 12;
int buttonState = 0;

int rightButtonPin=13;
int buttonStateRight = 0;

int leftButtonPin=11;
int buttonStateLeft = 0;

int sprintButtonPin=10;
int buttonStateSprint = 0;

String btn1;
String btn2;
String btn3;
String btn4;

void setup() {
  // initialize the LED pin as an output:
  // initialize the pushbutton pin as an input:
  pinMode(upButtonPin, INPUT_PULLUP);
  pinMode(rightButtonPin, INPUT_PULLUP);
  pinMode(leftButtonPin,INPUT_PULLUP);
  pinMode(sprintButtonPin, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  // read the state of the pushbutton value:
  buttonState = digitalRead(upButtonPin);
  buttonStateRight = digitalRead(rightButtonPin);
  buttonStateLeft = digitalRead(leftButtonPin);
  buttonStateSprint = digitalRead(sprintButtonPin);
  if(buttonState == 0) {
//    Serial.println("UP");
      btn1 = "NO";
  } else {
      btn1 = "UP";
  }
  if(buttonStateRight == 0) {
//    Serial.println("LEFT");
    btn2 = "NOOO";
  } else {
    btn2 = "LEFT";
  }
  if(buttonStateLeft == 0) {
    //Serial.println("RIGHT");
    btn3 = "NOOOO";
  } else {
    btn3 = "RIGHT";
  }
  if(buttonStateSprint == 0) {
    btn4 = "NOOOOO";
  } else {
    btn4 = "SPRINTT";
  }
  Serial.println(btn1 + " " + btn2 + " " + btn3 + " " + btn4); 
  delay(50);


}
