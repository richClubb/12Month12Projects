#include <SparkFun_ADXL345.h>         // SparkFun ADXL345 Library

/*********** COMMUNICATION SELECTION ***********/
/*    Comment Out The One You Are Not Using    */
//class MotorDriver
//{
//    int pinA;
//    int pinB;
//  public:
//    MotorDriver(int, int);
//    void setSpeed(int, int);
//};
//
//MotorDriver::MotorDriver(int aPinA, int aPinB)
//{
//  pinA = aPinA;
//  pinB = aPinB;
//  
//}
//
//void MotorDriver::setSpeed(int direction, int speed)
//{
//  
//  
//}
//
//
//class MotionController
//{
//    MotorDriver MotorDriverA;
//    MotorDriver MotorDriverB;
//  public:
//    MotionController(MotorDriver, MotorDriver);
//    void setHeading(int, int);
//};
//
//MotionController::MotionController(MotorDriver aMotorDriverA, MotorDriver aMotorDriverB)
//{
//  
//}
//
//void MotionController::setHeading(int direction, int heading)
//{
//
//  switch(direction)
//  {
//    case 0:
//      MotorDriverA.setSpeed(0, 0);
//      MotorDriverB.setSpeed(0, 0);
//  }
//  
//
//}


ADXL345 adxl = ADXL345();           // USE FOR SPI COMMUNICATION, ADXL345(CS_PIN);

void setup() {

  Serial.begin(9600);                 // Start the serial terminal
  Serial.println("SparkFun ADXL345 Accelerometer Hook Up Guide Example");
  Serial.println();
  
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(3, OUTPUT);

  digitalWrite(11, LOW);
  digitalWrite(10, LOW);
  digitalWrite(9, LOW);
  digitalWrite(3, LOW);

  adxl.powerOn();                     // Power on the ADXL345

  adxl.setRangeSetting(2);           // Give the range settings
                                      // Accepted values are 2g, 4g, 8g or 16g
                                      // Higher Values = Wider Measurement Range
                                      // Lower Values = Greater Sensitivity

}

int targetY = 0;
float p, i, d;
float kp, ki, kd;


void loop() {
  // Accelerometer Readings
  int x,y,z;   
  int error;

  kp = 10;

  adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store them in variables declared above x,y,z

  // Output Results to Serial
  /* UNCOMMENT TO VIEW X Y Z ACCELEROMETER VALUES */  
  

  error = targetY - y;

  p = kp * error;

  Serial.print(y);
  Serial.print(", ");
  Serial.print(error);
  Serial.print(", ");
  Serial.println(int(p));
  

  if(p == 0)
  {
    digitalWrite(3, LOW);
    digitalWrite(9, LOW);
    digitalWrite(10, LOW);
    digitalWrite(11, LOW);
  }
  else if(p < 0)
  {
    digitalWrite(9, LOW);
    digitalWrite(10, LOW);
    analogWrite(3, -int(p));
    analogWrite(11, -int(p));  
  }
  else if(p > 0)
  {
    digitalWrite(3, LOW);
    digitalWrite(11, LOW);
    analogWrite(9, int(p));
    analogWrite(10, int(p));  
  }
 
}
