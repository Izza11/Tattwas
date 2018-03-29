void vayu(){
  noStroke();
fill(230,result%255,result-78,35);
  //ellipse(width/2,height/2,result*7.1,result*7.1);
  bigger8();
  bigger();


}

void bigger(){ //Bigger is in AIR (circle)
  
fill(230,result%75,result-78,45);
//ellipse(width/2,height/2,result*1.1,result*1.1);
bigger2();


}


void bigger2(){
  //frameRate(15); // variations in time create interesting time patterns
  angle+=0.01;
  val=sin(angle*0.1); //0 to 6.28
  result=int(map(val,-1,1,0,255));
  fill(35,result%85,result-22);
  ellipse(width/2,height/2,result*1.3,result*1.3);

}


void bigger8(){


for (int i=0; i<700; i+=50){
fill(10,i%255,result,10);
ellipse(width/2,height/2,(i-result)*2,(i-result)*2);
}}