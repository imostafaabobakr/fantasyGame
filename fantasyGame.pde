int jackX=400;  //Jack is our player
int jackY=400;  //Jack's coordinates
PImage jack;  //Jack's image
float jackSpeed = 10;  //jackSpeed of jack

float coinX=150;  //The coin initial coordinates
float coinY=150;
PImage coin; //Coin image

int scor;  //variable to store the score
PImage score;  //Score bag image

float bombX;  //variable for bomb (x-axis)
PImage bomb;  //bomb is the enemy
float bombSpeed = 10;  //jackSpeed of bomb

//Backgrounds
PImage startCover;  //start window background
PImage gameCover;  //game background
PImage gameOver;  //gameover background
PImage winCover;  //winning background

int state=0;  //state of game (play(1) - playagian(11)


float rad = 0;  // for rotation of loser
PFont font;

void setup(){
  size(1000,600,P3D);
  smooth();
  
  jack=loadImage("jack.png");
  coin=loadImage("coin.png");
  score=loadImage("score.png");
  bomb=loadImage("bomb.png");  
  
  startCover = loadImage("fantasy.jpg");
  gameCover = loadImage("fantasy1.jpg");
  winCover = loadImage("fantasy2.jpg");
  gameOver = loadImage("fantasy3.jpg");
  
  font = createFont("Jokerman",128);
  textFont(font);
}


void draw(){
  
  background(startCover);
  fill(255);
  textAlign(CENTER);
  textSize(70);
  text("FANTASY GAME", width/2, 220); 
  textSize(30);
  text("Use the arrows to play!", width / 2, 330);
  textSize(25);
  text("Press the mouse to start!", width / 2, 375);

  if (state==1) {
      game();
  }
  
}

void mousePressed() {
    if ((mouseX>=0 && mouseX <= 1000) && (mouseY>=0 && mouseY<=600)) {
        state = 1; // state game 
    }
}

void game(){
    background(gameCover);
    noStroke(); 
    
    image(jack,jackX,jackY,60,60);
    image(coin,coinX,coinY,40,40); 
    image(score,460,520,80,70);
    textSize(15);
    text("Score", width/2, 555);
    textSize(12);
    text(scor, width/2, 575);

    image(bomb,bombX,height/2,40,40);
    
    //The motion of bomb
    bombX = bombX + bombSpeed;  //increase his x-postion by the value of bombSpeed
    if(bombX > (width-50) || bombX < 10){
      bombSpeed = bombSpeed * -1;  //when reaching the edges of the window, change direction
    }   

    //playing with arrows  
    //The variable keyCode is used to detect special keys such as the UP, DOWN, LEFT, RIGHT arrow keys and ALT, CONTROL, SHIFT.
    //But the keys included in the ASCII specification, do not require checking to see if the key is coded
    if(keyPressed && (key == CODED)){
        if(keyCode == LEFT)jackX-=jackSpeed;
        else if (keyCode == RIGHT)jackX+=jackSpeed;
        else if (keyCode == UP)jackY-=jackSpeed;
        else if (keyCode == DOWN)jackY+=jackSpeed;
    }
 
   //If the player reach the end of window, appears in the other side
   if(jackX>width-60){
        jackX=0;
    }
    if(jackY>height-60){
        jackY=0;
    }
    if(jackX<0){
        jackX=width-60;
    }
    if(jackY<0){
        jackY=height-60;
    }
    
    //If the player is close to the coin:    1.generate coin in another place      2.increase the score
    float distance = dist(coinX,coinY,jackX,jackY);
    if(distance<50){
      coinX = random(10,width-40); 
      coinY = random(10,height-100);
      scor++;
    }
    
    //If the player collide with the bomb: make score (-1) to go to gameOverScreen()
    float bom = dist(bombX,height/2,jackX,jackY);
    if(bom<50){
      scor = -1;
    }
    
    //condition for losing
    if(scor == -1){
      gameOverScreen();
    }
    //condition for winning     
    if(scor == 1){
      winScreen();
    }
}


void winScreen() {
  background(winCover);
  fill(255);
  textSize(80);
  textAlign(CENTER);
  text("YOU WIN!", width / 2, 260);
  textSize(25);
  text("Play Again (P) ", width / 2, 300);
  text("Exit Game (E)", width / 2, 350);
  if(keyPressed){
        if(key == 'E' || key == 'e')exit();
        else if(key == 'P' || key == 'p')state=11;  
  }
  if(state==11){
    state = 0;
    scor = 0;
    draw();
  }
}

void gameOverScreen() {
  
  background(gameOver);
  fill(255);
  textSize(80);
  textAlign(CENTER);
  text("GAME OVER!", width / 2, 260);
  textSize(25);
  text("Play Again (P) ", width / 2, 400);
  text("Exit Game (E)", width / 2, 450);
  if(keyPressed){
        if(key == 'E' || key == 'e')exit();
        else if(key == 'P' || key == 'p')state=11;
  }
  if(state==11){
    state=0;
    scor=0;
    draw();
  }
  
  //Loser Transformation
  translate(width/2, height/2);  //To make "loser" origin point in the center of the screen
  for(int i=0; i<4; i++){
    float x = map(rad, 0, width, -PI, PI);   
    //Map is used to convert the values from one range of numbers (0 , width) to another (-PI, PI). 
    rotateY(x);   //Rotate around the Y-axis in the 3D
    rad++;
  }
  //(Isolating Transformation) To isolate the effects of a transformation so they don’t affect later commands 
  pushMatrix();
  translate(0, 40);  //translate loser word +40 in the y-axis
  rotateY(HALF_PI); //Rotate around Y-xis by Half-PI
  textSize(30);
  text("loser",0,0);
  popMatrix();
}
