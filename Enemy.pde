class Enemy{
  float xpos, ypos;
  
  Enemy(float tempXpos, float tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  void update(){
    pushMatrix();
      translate(xpos,ypos);
      ellipse(0,0,20,20);
    popMatrix();
  }
}
