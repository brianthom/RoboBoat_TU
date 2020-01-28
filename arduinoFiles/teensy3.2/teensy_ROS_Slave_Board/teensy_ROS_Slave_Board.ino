
#include <ros.h>
#include <std_msgs/Float32.h>
#include <geometry_msgs/Vector3.h>
#include <sensor_msgs/NavSatFix.h>

#include <Adafruit_BNO055.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_GPS.h>

#define L_ESC 5 //Teensy pin for the left motor's ESC
#define R_ESC 6 //Teensy pin for the right motor's ES

#define STOP_PWM 4915
#define RANGEPWM 1311

#define UPDATE_RATE 50

Adafruit_BNO055 bno = Adafruit_BNO055(55, 0x28); //Initializing the Adafruit BNO055 Sensor

ros::NodeHandle nh;

//Callback function for updating the left ESC
void leftESC_Change( const std_msgs::Float32& msg) {
  float scale = msg.data; //value between -1 and 1 to allow for forward & reverse
  analogWrite(L_ESC, (unsigned short)(STOP_PWM + RANGEPWM * scale));
}
//Callback function for updating the right ESC
void rightESC_Change( const std_msgs::Float32& msg) {
  float scale = msg.data; //value between -1 and 1 to allow for forward & reverse
  analogWrite(R_ESC, (unsigned short)(STOP_PWM + RANGEPWM * scale));
}

// Creating the subscriber variables
ros::Subscriber<std_msgs::Float32> ard_LeftESC("ard_LeftPWM", leftESC_Change);
ros::Subscriber<std_msgs::Float32> ard_RightESC("ard_RightPWM", rightESC_Change);

// Creating the IMU publisher variables
geometry_msgs::Vector3 bno_orientationMsg;
geometry_msgs::Vector3 bno_angVelocityMsg;
geometry_msgs::Vector3 bno_linearAccelMsg;
sensor_msgs::NavSatFix navSat_msg;

// ROS message handlers, publishers, and subscribers
ros::Publisher bno_orientation("bno_orientation", &bno_orientationMsg);
ros::Publisher bno_angVelocity("bno_angVelocity", &bno_angVelocityMsg);
ros::Publisher bno_linearAccel("bno_linearAccel", &bno_linearAccelMsg);
ros::Publisher gpsPub("gps", &navSat_msg);

// GPS Declarations
#define GPSSerial Serial2       // GPS connected to Teensy Serial port 2
Adafruit_GPS GPS(&GPSSerial);   // Connect to the GPS on the hardware port
#define GPSECHO false

// Publish Timing COntrol Variables
uint32_t publish_imu_time = 0;
uint32_t publish_gps_time = 0;

#define IMU_PUBLISH_RATE 10 //hz
#define GPS_PUBLISH_RATE 1 //hz



void setup() {
  //Configuring the PWM pins for output
  pinMode(L_ESC, OUTPUT);
  pinMode(R_ESC, OUTPUT);

  //Allow for 16-bits of PWM write resolution
  analogWriteResolution(16);

  //Set the frequencies for the PWM output that is sent to the ESCs
  analogWriteFrequency(L_ESC, UPDATE_RATE);
  analogWriteFrequency(R_ESC, UPDATE_RATE);

  //Set the PWM value to the ESC predetermined STOP duty cycle
  analogWrite(L_ESC, STOP_PWM);
  analogWrite(R_ESC, STOP_PWM);

  //Wait until the BNO055 has been initialized


  //ROS initialization of the publishers and subscribers
  nh.initNode();
  nh.getHardware()->setBaud(57600);

  nh.subscribe(ard_LeftESC);
  nh.subscribe(ard_RightESC);
  nh.advertise(bno_orientation);
  nh.advertise(bno_angVelocity);
  nh.advertise(bno_linearAccel);
  nh.advertise(gpsPub);

  // 9600 NMEA is the default baud rate for Adafruit MTK GPS's
  GPS.begin(9600);
  // uncomment this line to turn on RMC
  GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  // uncomment this line to turn on only the "minimum" data
  //GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCONLY);
  // For parsing data, we don't suggest using anything but
  // either RMC only or RMC+GGA since
  // the parser doesn't care about other sentences at this time
  // Set the update rate
  GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ); // 1 Hz update rate

  // Request updates on antenna status, comment out to keep quiet
  GPS.sendCommand(PGCMD_ANTENNA);  while (!nh.connected()) {
    nh.spinOnce();
  }
  while (!bno.begin());
}

void loop() {
  //Collecting the data from the BNO055

  if ((millis() - publish_imu_time) >= 1000 / IMU_PUBLISH_RATE)
  {
    sensors_event_t orientationData , angVelocityData , linearAccelData;
    bno.getEvent(&orientationData, Adafruit_BNO055::VECTOR_EULER);
    bno.getEvent(&angVelocityData, Adafruit_BNO055::VECTOR_GYROSCOPE);
    bno.getEvent(&linearAccelData, Adafruit_BNO055::VECTOR_LINEARACCEL);

    //Updating the orientation publisher
    bno_orientationMsg.x = orientationData.orientation.x;
    bno_orientationMsg.y = orientationData.orientation.y;
    bno_orientationMsg.z = orientationData.orientation.z;

    //Updating the angular velocity publisher
    bno_angVelocityMsg.x = angVelocityData.gyro.x;
    bno_angVelocityMsg.y = angVelocityData.gyro.y;
    bno_angVelocityMsg.z = angVelocityData.gyro.z;

    //Updating the linear acceleration publisher
    bno_linearAccelMsg.x = linearAccelData.acceleration.x;
    bno_linearAccelMsg.y = linearAccelData.acceleration.y;
    bno_linearAccelMsg.z = linearAccelData.acceleration.z;

    //Publishing the orientation, angular velocity, and linear acceleration Vectors
    bno_orientation.publish(&bno_orientationMsg);
    bno_angVelocity.publish(&bno_angVelocityMsg);
    bno_linearAccel.publish(&bno_linearAccelMsg);
  }

  // read data from the GPS in the 'main loop'
  char c = GPS.read();  if (GPS.newNMEAreceived()) {
    if (!GPS.parse(GPS.lastNMEA()))
      return;
  }

  //this block publishes velocity based on defined rate
  if ((millis() - publish_gps_time) >= (1000 / GPS_PUBLISH_RATE))
  {

    navSat_msg.latitude = GPS.latitude;
    navSat_msg.longitude = GPS.longitude;
    navSat_msg.altitude = GPS.altitude;
    navSat_msg.status.status = GPS.fix;
    navSat_msg.status.service = GPS.fixquality;
    gpsPub.publish(&navSat_msg);

    publish_gps_time = millis();
  }
}
