void prithivi(){
 //
pushMatrix();

translate(width/2,height/2);
rotate(angle);

for (int i=1100; i>0; i-=100){
fill(255,255,val,val1%40);
rect(0,0,(i-result),(i-result));
}

popMatrix();
}