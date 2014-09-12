// Project 2: My own private Space Invaders
// by Nadja, Toke & Mads

Player player;
Bullet bullet;
Army army;

void setup(){
  size(800,500);
  noStroke();
  background(0);
  rectMode(CENTER);
  ellipseMode(CENTER);
  player = new Player(width/2);
  army = new Army(10,10);
}

void draw(){
  background(0);
  player.update();
  if(bullet != null){
    bullet.update();
  }
  army.update();
}

// ER ARMY UNØDVENDIG?
