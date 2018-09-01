boolean gameStart = false;
boolean gameOver = false;
boolean setup = false;

void setup() {
  size(500, 700); // set the dimensions of the screen
  textSize(20); // set the size of any text on the screen
  background(255); // set the background color as white

  fill(0);
  textSize(50);
  text("MY IDENTITY", 100, 100);
  textSize(20);
  String s = "Description:\nThis is an life simulation game. You get to create your own virtual character and choose pathways to build your character. Once all the general input is complete, you will be given sets of choices that will allow you to progress through your virtual life. Good Luck!";
  text(s, 50, 150, 400, 500);
  fill(153);
  text("CLICK ANYWHERE TO START", 110, 650);
}

void draw() {
  if (gameStart == false) {
  } else {
    if (gameOver) {
      text("CLICK ANYWHERE TO RESTART", 110, 650);
      return;
    }
  }
}

// starts the game when the start button is clicked
void mouseClicked() {
  if (gameStart == false && setup == false && gameOver == false && (mouseX < 500 && mouseX > 0) && ((mouseY < 700) && (mouseY > 0)))
    setup = true;
  else if (gameStart == false && setup == true && gameOver == false) {
    if ((mouseX < 500 && mouseX > 0) && ((mouseY < 700) && (mouseY > 0)))
      setup = true;
  }
}
