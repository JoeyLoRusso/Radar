Cell[][]grid;
boolean hasSetUpGame = false;

void game() {
  background(0);

  //create the grid at the start of the game (only runs once)
  if (hasSetUpGame == false) {
    setUpGame();
  }

  //Loop through each Cell on the grid
  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      //display each object
      grid[i][j].display();
      grid[i][j].isMouseOnCell();
    }
  }
}

void setUpGame() {
  int cols = 10;
  int rows = 10;
  int gridScale = 100; //the size of each Cell in the grid
  int gridBorderX = 100; //where the grid starts on the left
  int gridBorderY = 50; //where the grid starts on the top

  grid = new Cell[cols][rows];
  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*gridScale+gridBorderX, j*gridScale+gridBorderY, gridScale, gridScale);
    }//end for loop j
  }//end for loop i
  hasSetUpGame=true;
}//end setUpGame

class Cell {
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  int x, y;   // x,y location
  int w, h;   // width and height


  // Cell Constructor
  Cell(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }

  void display() {
    this.displayL1(); //display the ships, rocks, ports, enemy ships, and water
    this.displayL2(); //display the heavy fog
    this.displayL3(); //display the light fog
    this.displayBG(); //display the tile outline
  }

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
  }

  void isMouseOnCell() {
    if (mouseX>=x && mouseX<x+w && mouseY>=y && mouseY<y+h) { //is the mouse on top
      if (mousePressed==true) { //if the mouse is on top and pressed
        println(this);
      }
    }
  }
}
