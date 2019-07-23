void intro(){
  drawIntroBg();
  makeIntroText();
  makeStartButton();
}


void drawIntroBg(){
  //Make the background of the intro screen
  background(0);
}

void makeIntroText(){
  textSize(20);
  fill(0, 255, 0);
  text("RADAR", width/2, height/2);
  text("Press space to start", width/2, height/3*2);

}

void makeStartButton(){
  if(keyPressed==true && key == ' '){
    //maybe add a fade out/animation to transition
    goToGame();
  }
}
