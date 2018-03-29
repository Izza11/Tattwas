void akasha2(){
  
  int radius = 9000;
  fill(0,0,0);
  float a = (width/2);
  float b = height/2;
  ellipse(a,b,25,25);
  float sign = 1.0;
  
  for (float t = 0; t<=TWO_PI; t=t+random(0.5,0.7)) {
  float x = radius*cos(t);
  float y = radius*sin(t);
  float x1 = radius*cos(t+0.2);
  float y1 = radius*sin(t+0.2);
 
    time_passed+= random(0.00001, 0.001);
    PVector direction_vector_1 = new PVector(x-a, y-b);
    direction_vector_1.normalize();
    
    PVector direction_vector_2 = new PVector(x1-a, y1-b);
    direction_vector_2.normalize();

    //int rand = random(600, 800);
    moveA = a + 800*sin(time_passed)*direction_vector_1.x;
    moveB = b + 800*sin(time_passed)*direction_vector_1.y;
   
    moveC = a + 800*sin(time_passed)*direction_vector_2.x;
    moveD = b + 800*sin(time_passed)*direction_vector_2.y;
   
   
    //ellipse(moveA,moveB,10,10);
    fill(155,random(200,255),255,255*(sin(time_passed)));
    triangle(a, b, moveA, moveB, moveC, moveD);
  }
  
  for (float t = 0.4; t<=TWO_PI+PI; t=t+0.5) {
  float x2 = radius*cos(t);
  float y2 = radius*sin(t);
  float x3 = radius*cos(t+0.2);
  float y3 = radius*sin(t+0.2);
 
    time_passed+= 0.001;
    PVector direction_vector_1 = new PVector(x2-a, y2-b);
    direction_vector_1.normalize();
    
    PVector direction_vector_2 = new PVector(x3-a, y3-b);
    direction_vector_2.normalize();

    moveE = a + 1800*sin(time_passed)*direction_vector_1.x;
    moveF = b + 1800*sin(time_passed)*direction_vector_1.y;
   
    moveG = a + 1800*sin(time_passed)*direction_vector_2.x;
    moveH = b + 1800*sin(time_passed)*direction_vector_2.y;
   
   
    //ellipse(moveA,moveB,10,10);
    fill(155,255,255,255*(sin(time_passed)));
    triangle(a, b, moveE, moveF, moveG, moveH);
    
  }
  
  
}