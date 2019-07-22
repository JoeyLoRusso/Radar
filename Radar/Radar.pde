/*
Project Notes:
- submarines?
*/


int gamemode; //0=intro, 1=game, 2=endgame
void setup() {
  fullScreen();
  gamemode = 0; //start in the intro
}

void draw() {
  //run the correct part of code based on what the gamemode currently is
  if (gamemode==0)intro();
  if (gamemode==1)game();
  if (gamemode==2)endgame();
}
