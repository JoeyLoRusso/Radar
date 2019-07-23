Cell[][]grid;
boolean hasSetUpGame = false;

void game() {
  background(0);
  
  //create the grid at the start of the game (only runs once)
  if (hasSetUpGame == false) {
    setUpGame();
    hasSetUpGame=true;
  }


  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      //display each object
      grid[i][j].display();
    }
  }
}

void setUpGame() {
  int cols = 10;
  int rows = 10;
  int gridScale = 50; //the size of each Cell in the grid
  int gridBorderX = 100; //where the grid starts on the left
  int gridBorderY = 50; //where the grid starts on the top

  grid = new Cell[cols][rows];
  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*gridScale+gridBorderX, j*gridScale+gridBorderY, gridScale, gridScale);
    }//end for loop j
  }//end for loop i
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
    fill(0);
    stroke(0, 255, 0);
    strokeWeight(2);
    rect(x, y, w, h);
  }
}
