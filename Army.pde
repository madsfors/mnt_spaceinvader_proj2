class Army{
  float xpos, ypos;
  int m;
  Enemy[] enemies = new Enemy[50];
  
  Army(float tempXpos, float tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  void update(){
    if(m - second() == -1){
      xpos+=30;
    }
    for(int i=0;i<enemies.length;i++){
      enemies[i] = new Enemy((xpos+i*30),ypos+30*floor(i/10));
      enemies[i].update();
    }
    m = second();
  }
}
/* %(10*30) */
