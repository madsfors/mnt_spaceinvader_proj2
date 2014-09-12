class Bullet{
  float xpos,ypos;
  
  Bullet(float tempXpos, float tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  void update(){
    pushMatrix();
      translate(xpos, ypos);
      rect(0,0,5,10);
    popMatrix();
    ypos-=5;
    if(ypos < 0){
      bullet = null; // "destroy" object
    }
  }
}
