void wheels(){

  calcWave2();
  renderWave2();
    theta += 0.08;
}

void calcWave2() {
  // Increment theta (try different values for 'angular velocity' here


  // For every x value, calculate a y value with sine function
  float amplitude = 20.0;
  float frequency = 0.6;
  float u_time = millis();
  
  float x = 0;
  for (int i = 0; i < yvalues.length; i++) {
    float yv = 0.0;
   
    yv = sin(x*frequency)*amplitude;
    float t = 0.00003*(-u_time*130.0);
    yv = sin(x*frequency + t)*amplitude;
    yv += sin(x*frequency*1.72 + (t*1.121))*amplitude*4.0;
    yv += sin(x*frequency*2.221 + t*0.437)*amplitude*50.0;
    yv += sin(x*frequency*3.1122+ t*1.269)*amplitude*20.5;
    yv *= amplitude*0.02; 
    x+=dx;
    yvalues[i] = yv;
    x += (xspacing/yvalues.length);
  }
}

void renderWave2() {
  noStroke();
  float val=sin(theta); //0 to 6.
  float val1=map(val,-1,1,100,255);
  //blendMode(ADD);
  fill(10, 150, val1, 30);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length-1; x++) {
    //ellipse(x*xspacing, height/2+yvalues[x], 30, 30);
    stroke(10, val2, val1,result%100);
    strokeWeight(200);
    line(x*xspacing, height/2+yvalues[x], (x+1)*xspacing, height/2+yvalues[x+1]);
    
    
  }
  


}