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
 

float val, val1,val3, val2, val4;
float xoff, yoff;
float angle;
float result,x,y;
int scene = 1;
int sec;
int counter, decrement;
int r1, r2, r3;

//////////////////////////////////////////////////// apas
int xspacing = 10;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave


float theta = 0.0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave

/////////////////////////////////////////////////////
float moveA; float moveB; float moveC; float moveD; 
float moveE; float moveF; float moveG; float moveH;    
float time_passed;
float fluid_anchor = 1.0;
float check = 0.0;

void setup(){
  //size(1024,768,P3D);
 fullScreen(P3D);
rectMode(CENTER);
orientation(LANDSCAPE);
smooth();
frameRate(16);
  r1 = (int)random(1,6);
  r2 = (r1 + 1) % 6;  
  r3 = (r2 + 1) % 6;
  
  hint(DISABLE_DEPTH_MASK);
  
  ///////apas
  w = width+66; // connected to spacing of curved lines
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
  ////////
  time_passed = 0;
}


void draw(){
  
  check = random(1,10);
  angle+=0.01;
  val=sin(angle); //0 to 6.
  val3=map(val,-1,1,500,10);
  val1=map(val,-1,1,0,255);
  val2=map(noise(xoff), 0, 1, -30,30);// this is a noise value
  val4=map(noise(yoff), 0, 1, 0,-3000);// this is a noise value
  result=int(map(val,-1,1,0,255));
  background(result,val1,78);
  //text(result,100,100);
  noStroke();
  
  if (counter >= abs(val2*1000)) {
    r1 = (int)random(1,6);
    r2 = (r1 + 1) % 6;  
    r3 = (r2 + 1) % 5;
    counter = 0;
  }
  
  
  playanimation(r1);
  playanimation(r2);
  playanimation(r3);
  
  counter++;
  xoff += 0.01;
  yoff += 1;
  blendMode(NORMAL);
  fill(0);
  //text(val2,100,100);
  
}
  
void playanimation(int r){
  
  switch (r) {
  case 1:
    
   akasha4();
    break;
  case 2:
    umbrellas();
   
    break;
  case 3: 
    fluid();

    break;
  case 4: 
    fluidfilled();
    break;
    
     case 5: 
    prithivi();
    break;
    
    case -1: 
    break;
  } 

}