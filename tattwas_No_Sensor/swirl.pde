void swirl(){

  calcWave0();
  renderWave0();
}

void calcWave0() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.08;

  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave0() {
  noStroke();
  float val=sin(theta); //0 to 6.
  float val1=map(val,-1,1,100,255);
  
  fill(10, 150, val1, 30);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing, height/2+yvalues[x]*sin(theta/2), 80, 80);
  }
}