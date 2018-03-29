void fluid(){

  calcWave1();
  renderWave1();
  theta += 0.08;
}

void calcWave1() {

  // For every x value, calculate a y value with sine function
  float amplitude = 20.0;
  float frequency = 0.6;
  float u_time = millis();
  
  float x = 0;
  for (int i = 0; i < yvalues.length; i++) {
    float yv = 0.0;
   
   // Reference: The Book of shaders
    yv = sin(x*frequency)*amplitude;
    float t = 0.00003*(-u_time*230.0);
    yv = sin(x*frequency + t)*amplitude;
    yv += sin(x*frequency*1.72 + (t*1.121))*amplitude*4.0;
    yv += sin(x*frequency*2.221 + t*0.437)*amplitude*5.0;
    yv += sin(x*frequency*3.1122+ t*1.269)*amplitude*1.5;
    yv *= amplitude*0.02; 
    x+=dx;
    yvalues[i] = yv;
    x += (xspacing/yvalues.length); //spacing of shapes
  }
}

void renderWave1() {
  noStroke();
  float val=sin(theta); //0 to 6.
  float val1=map(val,-1,1,100,255);
  // 
  strokeCap(ROUND);
  strokeJoin(ROUND);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length-1; x++) {
    stroke(val1/0.2, 150-sin(val1), val1);
   strokeWeight(10);
    line(x*xspacing, height/2+yvalues[x], (x+1)*xspacing, height/2+yvalues[x+1]);    
    
  }
  


}