// // For WAKELOCK
  /* 
import android.os.Bundle; 
import android.view.WindowManager;

void onCreate(Bundle bundle)
{ 
  super.onCreate(bundle);
  getActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
} // onCreate() 

 */
 
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

Context context;
SensorManager manager;
Sensor sensor;
AccelerometerListener listener;
float ax, ay, az;

float val, val1,val3;
float angle;
float result;
int scene = 1;
int counter, decrement;
int r1, r2, r3;
public float fade;;
boolean lighten;


void setup(){
  fullScreen();

  context = getActivity();
  manager = (SensorManager)context.getSystemService(Context.SENSOR_SERVICE);
  sensor = manager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
  listener = new AccelerometerListener();
  manager.registerListener(listener, sensor, SensorManager.SENSOR_DELAY_GAME);
  
  rectMode(CENTER);
  smooth();
  r1 = (int)random(1,6);
  r2 = (r1 + 1) % 6;  
  r3 = (r2 + 1) % 6;
  counter = decrement = 1;
  fade = 0;
  lighten = false;
}


void draw(){
  frameRate(25);

  if (counter >= 1625) {
    r1 = (int)random(1,6);
    r2 = (r1 + 1) % 6;  
    r3 = (r2 + 1) % 6;
    counter = 0;
  }
  
  angle+=0.01;
  val=sin(angle); //0 to 6.
  
  val3=map(val,-1,1,500,10);
  val1=map(val,-1,1,0,255);
  result=int(map(val,-1,1,0,255));
  background(result,65,78);
  text(result,100,100);
  noStroke(); 
  
  if (fade < 200 && lighten == false){
    fade = ((decrement++)/812.5) * 200;
  } else {
    lighten = true;
    fade = ((decrement--)/812.5) * 200;
  }
  if (fade <= 1 && lighten == true) {
    fade = 0;
    decrement = 0;
    lighten = false;
  }
  
  playanimation(r1);
  playanimation(r2);
  playanimation(r3);
  
  counter++;
  println(counter);
}

class AccelerometerListener implements SensorEventListener {
  public void onSensorChanged(SensorEvent event) {
    ax = event.values[0];
    ay = event.values[1];
    az = event.values[2];    
  }
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
  }
} 

void playanimation(int r){
  
  switch (r) {
  case 1:
    tejas();

    break;
  case 2:
   vayu();
    break;
  case 3: 
    prithivi();

    break;
  case 4: 
    apas();
    break;
    
     case 5: 
   akasha();
    break;
    
    case -1: 
    break;
  } 
}

void akasha(){
  
  fill(20-(ax*10), 10-(ax*10), 250-(ay*10), fade);
  ellipse(width/2+(ax*20),height/2+(ay*20),15,15);
}

void apas(){

  pushMatrix();
  frameRate(17);
  angle+=0.00002;
  val=sin(angle);
    translate(width/2+(ax*30),height/2);
    scale(val/2);
    
    fill(200-(ax*10), 10+(ax*40), 40-(ay*30),fade);
    beginShape();
    vertex(310.1, -446);
    bezierVertex(269.4, -309.3, 142.8, -209.6, -7.1, -209.6);
    fill(200-(ax*10), 10+(ax*40), 40-(ay*30),fade);
    bezierVertex(-157, -209.6, -283.7, -309.3, -324.4, -446);
    bezierVertex(-399.2, -367.4, -445.2, -261.1, -445.2, -144);
    bezierVertex(-445.2, 97.9, -249.1, 294, -7.2, 294);
    bezierVertex(234.7, 294, 430.8, 97.9, 430.8, -144);
    bezierVertex(430.8, -261.1, 384.9, -367.4, 310.1, -446);
    endShape();
  popMatrix();

}

void prithivi(){

  for (int i=400; i>0; i-=50){
    fill(55+(abs(ay)*10),255-(abs(ay)*10),100-(ay*10),fade);
    rect(width/2,height/2,(i-(ax*20)),(i-(ax*20)));
  }
}


void tejas(){
  
   pushMatrix();
   
   translate(width/2-(val3/2),height/2-(val3/2));
   beginShape();
    fill(255-(abs(ay)*10),15+(abs(ay)*40),100-(ay*10), fade);
   vertex(val3/2,0);
   fill(255-(abs(ay)*10),15+(abs(ay)*40),100-(ay*10), fade);
   vertex(val3,val3);
   fill(255-(abs(ay)*10),15+(abs(ay)*40),100-(ay*10), fade);
   vertex(0,val3);
   endShape();
   
   
  popMatrix();
  
  
  //
    float triangleval1,triangleval2,triangleval3,triangleval4;
  triangleval1= map(val1,0,255,0,1600);
  triangleval2= map(val1,0,255,100,900);
  triangleval3= map(val1,0,255,0,500);
  fill(55+(abs(ay)*10),255-(abs(ay)*10),100-(ay*10), fade);

  
  pushMatrix();
    frameRate(10);
    translate(width/2-(triangleval2/2),height/2-(triangleval2/2));
    fill(55+(abs(ay)*10),255-(abs(ay)*10),100-(ay*10), fade);
    triangle(triangleval2/2,0,triangleval2,triangleval2,0,triangleval2);
  popMatrix();
  
  pushMatrix();
    frameRate(20);
    translate(width/2-(triangleval3/2),height/2-(triangleval3/2));
    
    fill(55+(abs(ay)*10),255-(abs(ay)*10),100-(ay*10), fade);
    triangle(triangleval3/2,0,triangleval3,triangleval3,0,triangleval3);
    //rotateZ(val4*0.01);
  popMatrix();

}


void vayu(){
 
fill(55+(abs(ay)*10),25+(abs(ay)*10),100-(ay*10),fade);
  //ellipse(width/2,height/2,result*7.1,result*7.1);
  bigger8();
  bigger();


}

void bigger(){ //Bigger is in AIR (circle)
  
fill(55+(abs(ay)*10),55+(abs(ay)*10),10+(ay*10),fade);
//ellipse(width/2,height/2,result*1.1,result*1.1);
bigger2();


}


void bigger2(){
  frameRate(15); // variations in time create interesting time patterns
  angle+=0.01;
  val=sin(angle*0.1); //0 to 6.28
  result=int(map(val,-1,1,0,255));
  fill(55+(abs(ay)*10),255-(abs(ay)*10),100-(ay*10), fade);
  ellipse(width/2-(ax*20),height/2,result*1.1/2,result*1.1/2);

}


void bigger8(){


for (int i=0; i<1000; i+=50){
fill(15+(abs(ay)*10),155-(abs(ay)*10),200-(ay*10),fade);
ellipse(width/2-(ax*20),height/2-(ay*20),(i-result)*1.2/2,(i-result)*1.2/2);
}}