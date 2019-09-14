class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  int x, y; // x,y location
  int w, h; // width and height
  boolean active; //the locations the activeShip is able to move or attack


  // Cell Constructor
  Cell(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    active=false;
  }

  void display() {//TODO dont draw the ships here, just dont draw them where there is fog elsewhere
    this.displayL1(); //display the ships, rocks, ports, enemy ships, and water
    this.displayL2(); //display the heavy fog
    this.displayL3(); //display the light fog
    this.displayBG(); //display the tile outline
  }//end display

  void displayL1() { //display the ships, rocks, ports, enemy ships, and water
    //display anything that is part of the game
  }

  void displayL2() { //display the heavy fog
    //cover anything that the player has not seen yet
  }

  void displayL3() { //display the light fog
    //cover where the player has seen, but can not see right now. They can still see the landscape, but not the enemy ships
  }

  void displayBG() { //display the tile outline
    fill(0, 255);
    stroke(0, 255, 0);
    strokeWeight(2);
    rect(x, y, w, h);
  }//end displayBG

  void clickOnShip() {
    if (mouseX>=x && mouseX<x+w && mouseY>=y && mouseY<y+h && mousePressed==true) { //is the mouse on top and pressed

      boolean newActive=false;
      int i=0;
      while (i<boats.length && newActive == false) {//loop through all the Ships
        if (boats[i].x == x && boats[i].y == y) { //if you clicked on a Ship
          //if (activePlayer == boats[i].team) { //if the ship is your own
            newActive = true; //tell the loop you have found a ship you own
            activeShip = i; //select that ship
          //}//end if the ship is your own
        } else { //if you didnt click on a Ship
          activeShip = -1; //declare that there should be no Ship currently selected (none on the sidebar)
        }//end else
        i++; //look at the next Ship in the loop
      }//end while loop
    }//end if the mouse on top and pressed
  }//end clickOnShip
  
  void findActiveSpaces(){
    
  }//end findActiveSpaces
  
  void displayActiveSpaces(){
    
  }//end displayActiveSpaces
}//end Cell class
