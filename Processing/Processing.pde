Story story;
Ending ending;
PImage img;
boolean gameStart = false;
boolean gameOver = false;
int black = 0;
int gray = 153;
int white = 255;
int lvl, points;

void setup() {
  size(500, 700); // set the dimensions of the screen
  background(255); // set the background color as white
  textSize(20); // set the default text size
  story = new Story();
  ending = new Ending();
  lvl = 0;
  points = 4;
}

void draw() {
  if (gameStart == false) {
    img = loadImage("pic.png");
    image(img, 50, 300, 400, 400);
    fill(black);
    textSize(50);
    text("Life.", 200, 100);
    textSize(20);
    String s = "Description: This is an life simulation game. You create your virtual character and choose pathways that determines the character's background identity. Once complete, you will be given the advantages and disadvantages in having the background your character has.";
    text(s, 50, 150, 400, 300);
    fill(gray);
    text("CLICK ANYWHERE TO START", 110, 650);
  } else {
    background(255); // set the background color as white
    if (gameOver) { // if the game is over, print out the results of the game (score)
      textSize(15);
      text("     ADVANTAGES\n" + ending.get(points, 0), 50, 50, 400, 300);
      text("     DISADVANTAGES\n" + ending.get(points, 1), 50, 300, 400, 300);
      text("CLICK ANYWHERE TO RESTART", 140, 650);
      return;
    }
    img = loadImage("pic (2).png");
    image(img, 0, 0, 500, 700);
    textSize(30);
    text("Life.", 400, 50);
    textSize(20);
    fill(gray);
    text("Click the ESC key to close the game", 70, 85);
    fill(black);
    if (lvl < story.getLength()) {
      text(story.get(lvl, 0), 50, 150, 400, 300);
      text(story.get(lvl, 1), 25, 400, 200, 150);
      text(story.get(lvl, 2), 280, 400, 200, 150);
      text(story.get(lvl, 3), 50, 600, 400, 300);
    } else gameOver = true;
  }
}

// starts the game when the start button is clicked
void mouseClicked() {
  if (gameOver == false) {
    if (gameStart == false && (mouseX < 500 && mouseX > 0) && ((mouseY < 700) && (mouseY > 0)))
      gameStart = true;
    else if (gameStart == true) {
      if (mouseY > 350 && mouseY < 550) {
        if (mouseX < 250) points--;
        else points++;
        lvl++;
      } else if (lvl == 1 && mouseY > 550 && mouseX < 500 && mouseX > 0) lvl++;
    }
  } else if (gameStart == true && gameOver == true && (mouseX < 500 && mouseX > 0) && ((mouseY < 700) && (mouseY > 0))) {
    gameStart = false;
    gameOver = false;
    play();
  }
}

// use keyboard to select choices
void keyPressed() {
  if (gameStart || !gameOver) 
    switch(keyCode) {
    case LEFT : 
      points--;
      lvl++;
      break;
    case RIGHT : 
      points++;
      lvl++;
      break;
    case DOWN : 
      if (lvl == 1) lvl++;
      break;
    }
}

// restart the game
void play () {
  size(500, 700); // set the dimensions of the screen
  background(255); // set the background color as white
  textSize(20); // set the default text size
  story = new Story();
  lvl = 0;
  points = 4;
}
