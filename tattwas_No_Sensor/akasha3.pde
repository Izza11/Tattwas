void akasha3(){
  
  int radius = 9000;
  fill(0,0,0);
  float a = (width/2)+val2;
  float b = height/2;
  ellipse(a,b,25,25);
  float sign = 1.0;
  
  for (float t = 0; t<=TWO_PI; t=t+0.5) {
  float x = radius*cos(t);
  float y = radius*sin(t);
 
    time_passed+= 0.0001;
    PVector direction_vector = new PVector(x-a, y-b);
    direction_vector.normalize();

    moveA = a + 500*sin(time_passed)*direction_vector.x;
    moveB = b + 500*sin(time_passed)*direction_vector.y;
   
   
    ellipse(moveA,moveB,10,10);
  }
  
}