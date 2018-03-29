void tejas2(){
  
  
  blendMode(EXCLUSION);
  pushMatrix();
  for(int i=100; i>-4000; i-=100){
    translate(val2,val2,val2*i);
  
  
  noStroke();
  pushMatrix();
    translate(0,0,-1500); //depth of tunnel
    fill(255);
    beginShape();
    vertex(0,30,0);
    vertex(0,30,-500);
    vertex(0,height-30,-500);
    vertex(0,height-30,0);
    endShape();
    
    beginShape();
    vertex(width,30,0);
    vertex(width,30,-500);
    vertex(width,height-30,-500);
    vertex(width,height-30,0);
    endShape();
    
    
    beginShape();
    vertex(30,0,0);
    vertex(width-30,0,0); // 30 is the offset of the plane
    vertex(width-30,0,-500);
    vertex(30,0,-500);
    endShape();
    
    beginShape();
    vertex(30,height,0);
    vertex(width-30,height,0);
    vertex(width-30,height,-500);
    vertex(30,height,-500);
    endShape();
    
    popMatrix();
    
  }
  
  popMatrix();
  
  
  
  //Triangles - Reorganize for different effects
  
  blendMode(ADD);
  
  for(int i=-1200; i<1200; i+=100){
  pushMatrix();
  //scale(0.5);
  beginShape();
  fill(abs(val3-56)%255,abs(result-144)%255,result%16,35);
  vertex(width/2,0);
  
  translate(-i,0);
  //fill(30,val3,86,45);
  vertex((width/2)+val2+i,(height/2));
  vertex(width/2,height);
  endShape();
   popMatrix();
 
  }
  
  
  
 
}