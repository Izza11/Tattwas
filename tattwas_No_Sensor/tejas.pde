
void tejas(){

   pushMatrix();
   
   translate(width/2-(val3/2),height/2-(val3/2));
   beginShape();
    fill((val3-56)%255,(result-144)%255,result%167);
   vertex(val3/2,0);
   fill(34,(result-144)%255,result%167);
   vertex(val3,val3);
   fill((val3-56)%255,(result-144)%255,result%167);
   vertex(0,val3);
   endShape();
   
   
  popMatrix();
  
  
  //
  float triangleval1,triangleval2,triangleval3,triangleval4;
  triangleval1= map(val1,0,255,0,3600);
  triangleval2= map(val1,0,255,-0,1500);
  triangleval3= map(val1,0,255,0,900);
  fill(30,val3,86);

  
  pushMatrix();
    //frameRate(10);
    translate(width/2-(triangleval2/2),height/2-(triangleval2/2));
    fill(220,0,val1%20,val1%180);
    triangle(triangleval2/2,0,triangleval2,triangleval2,0,triangleval2);
  popMatrix();
  
  pushMatrix();
    //frameRate(20);
    translate(width/2-(triangleval3/2),height/2-(triangleval3/2));
    
    fill(134,0,val1%10,val1%180);
    triangle(triangleval3/2,0,triangleval3,triangleval3,0,triangleval3);
    //rotateZ(val4*0.01);
  popMatrix();


}