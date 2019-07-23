/*
Project Notes:
 - add many types of ships
 - border on all sides of grid?
 */

int gamemode; //0=intro, 1=game, 2=endgame

void setup() {
  fullScreen(); //set the game to be fullscreen
  textAlign(CENTER, CENTER); //align the text to be in the center of where it is placed

  gamemode = 0; //start in the intro
}

void draw() {
  //run the correct part of code based on what the gamemode currently is
  if (gamemode==0)intro();
  if (gamemode==1)game();
  if (gamemode==2)endgame();
}

//set the gamemode to the correct value when called
void goToIntro(){
  gamemode = 0;
}

void goToGame(){
  gamemode = 1;
}

void goToEndgame(){
  gamemode = 2;
}
