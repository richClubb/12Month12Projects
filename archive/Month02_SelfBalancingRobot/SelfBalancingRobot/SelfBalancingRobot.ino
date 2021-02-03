#define DEBUG 1

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

  #ifdef DEBUG
  Serial.begin(115200);                 // Start the serial terminal
  #endif
  //Serial.println("SparkFun ADXL345 Accelerometer Hook Up Guide Example");
  //Serial.println();
  
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

int setPointY = 0;
float kp, ki, kd;
int error_rollingAverage = 0;
float currTime, deltaT;
unsigned int lastTime = 0;
int previousError = 0;
float i = 0;
int moveOffset = 23;


void loop() {
  // Accelerometer Readings
  int x,y,z;   
  int error;
  float p, d, total;

  currTime = millis();
  deltaT = currTime - lastTime;

  kp = -0.8;
  ki = -0.03;
  kd = -0.001;

  adxl.readAccel(&x, &y, &z);         // Read the accelerometer values and store them in variables declared above x,y,z

  // Output Results to Serial
  /* UNCOMMENT TO VIEW X Y Z ACCELEROMETER VALUES */  
  
  error_rollingAverage = ( ( error_rollingAverage * 4 ) + y ) / 5;
  error = setPointY - y;
  //error = setPointY - error_rollingAverage;
  p = kp * error;
  i = constrain( i + ki*error*(deltaT/1000),-100, 100);
  d = kd * (error - previousError) / (deltaT/1000);
  
  total = p + (ki * i) + (kd * d);

  #ifdef DEBUG
  Serial.print("Y: ");
  Serial.print(y);
  Serial.print(", Error: ");
  Serial.print(error);
  Serial.print(", Prop: ");
  Serial.print(p);
  Serial.print(", Integral: ");
  Serial.print(i);
  Serial.print(", Differential: ");
  Serial.print(d);
  Serial.print(", Total: ");
  Serial.println(int(total));
  #endif

  if(total == 0)
  {
    digitalWrite(3, LOW);
    digitalWrite(9, LOW);
    digitalWrite(10, LOW);
    digitalWrite(11, LOW);
  }
  else if(total < 0)
  {
    //analogWrite(3, map ( min(abs(total), 255 ), 0, 255, 23, 255 ));
    analogWrite(3, min(abs(total) + moveOffset, 255 ));
    digitalWrite(9, LOW);
    
    digitalWrite(10, LOW);
    //analogWrite(11, map ( min(abs(total), 255 ), 0, 255, 23, 255 ));
    analogWrite(11, min(abs(total) + moveOffset, 255 )); 
  }
  else if(total > 0)
  {
    digitalWrite(3, LOW);
    //analogWrite(9, map ( min(abs(total), 255 ), 0, 255, 23, 255 ));
    analogWrite(9, min(abs(total) + moveOffset, 255 ));
    
    //analogWrite(10, map ( min(abs(total), 255 ), 0, 255, 23, 255 ));  
    analogWrite(10, min(abs(total) + moveOffset, 255 ));
    digitalWrite(11, LOW);
  }

  lastTime = currTime;
  previousError = error;
}
