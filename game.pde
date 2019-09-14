Cell[][]grid;
Ship[]boats;

boolean hasSetUpGame = false;
int gridScale = 100; //the size of each Cell in the grid
int activeShip = -1;
int activePlayer = 0;

void game() {
  background(0);
  
  //create the grid at the start of the game (only runs once)
  if (hasSetUpGame == false) {
    setUpGame();
  }

  //loop through each Cell on the grid
  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      //display each object
      grid[i][j].display();
      grid[i][j].clickOnShip();
    }
  }

  //loop through each Ship
  for (int i = 0; i < boats.length; i++) {
    boats[i].displayShip();
  }

  if (activeShip != -1) { //if a ship is selected
    displaySidebar();
  }
} //end game



void setUpGame() {
  int cols = 10;
  int rows = 10;
  int gridBorderX = 100; //where the grid starts on the left
  int gridBorderY = 50; //where the grid starts on the top

  grid = new Cell[cols][rows];

  for (int i = 0; i < grid[0].length; i++) {
    for (int j = 0; j < grid[1].length; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*gridScale+gridBorderX, j*gridScale+gridBorderY, gridScale, gridScale);//why arent x and y numbers 1-10???
    }//end for loop j
  }//end for loop i
  setUpShips();
  hasSetUpGame=true;
}//end setUpGame



void setUpShips() {
  int numOfShips = 4; //how many ships are on each team

  boats = new Ship[numOfShips*2];

  //int tempTeam, int tempRadarRange, int tempGunRange, int tempSpeed, int tempX, int tempY, int tempHealth, String tempShipName

  //create the P1 ships
  boats[0] = new Ship(0, 2, 3, 2, grid[0][9].x, grid[0][9].y, 200, "Battleship");
  boats[1] = new Ship(0, 2, 3, 2, grid[1][9].x, grid[1][9].y, 200, "Aircraft Carrier");
  boats[2] = new Ship(0, 2, 3, 2, grid[2][9].x, grid[2][9].y, 100, "Destroyer");
  boats[3] = new Ship(0, 3, 2, 2, grid[3][9].x, grid[3][9].y, 50, "Submarine");

  //create the P2 ships
  boats[4] = new Ship(1, 2, 3, 2, grid[9][0].x, grid[9][0].y, 200, "Battleship");
  boats[5] = new Ship(1, 2, 3, 2, grid[8][0].x, grid[8][0].y, 200, "Aircraft Carrier");
  boats[6] = new Ship(1, 2, 3, 2, grid[7][0].x, grid[7][0].y, 100, "Destroyer");
  boats[7] = new Ship(1, 3, 2, 2, grid[6][0].x, grid[6][0].y, 50, "Submarine");
}//end setUpShips



void displaySidebar() {
  int sidebarLeft = width/4*3;
  int sidebarCenter = (sidebarLeft+width)/2;
  fill(100, 100);
  noStroke();
  rect(sidebarLeft, 0, width/4, height);

  boats[activeShip].displayShipInfo(sidebarCenter, sidebarLeft); //show the user a menu with info and actions for that ship
}
