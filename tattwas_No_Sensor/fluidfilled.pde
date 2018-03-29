void fluidfilled(){

  calcWave6();
  renderWave6();
  theta += 0.08;
}

void calcWave6() {

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

void renderWave6() {

  pushMatrix();
  // add some rotation
  polygon();
  popMatrix();
  
}

void polygon() {
  beginShape();
  int x;
  fill(val1/1.2, 150-sin(val1), val1);
  for (x = 0; x < yvalues.length-1; x++) {    
    vertex(x*xspacing, height/2+yvalues[x]);  
}
  vertex(x*xspacing, 2000);  
  vertex(0, 2000);  
  endShape(CLOSE);
}