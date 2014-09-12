class Player{
  float location;
  
  Player(float tempLocation){
    location = tempLocation;
  }
  
  void update(){
    float dir = 0;
    if(keyPressed){
      if(key == CODED){
        if(keyCode == LEFT){
          dir = -3;
        }
        if(keyCode == RIGHT){
          dir = 3;
        }          
      }
      if(key == ' ' && bullet == null){
        bullet = new Bullet(location, height - 50);
      }
    }
    
    location += dir;
    if(location < 0 || location > width){ // boundary conditions
      location -= dir;
    }
    pushMatrix();
      translate(location, height - 50);
      rect(0,0,20,20); //TODO: Add correct player model
    popMatrix();      
  }
}
