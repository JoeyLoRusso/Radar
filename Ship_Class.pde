class Ship {
  int team;
  String shipName;
  int radarRange;
  int gunRange;
  int x;
  int y;

  //Ship constructor
  Ship(int tempTeam, String tempShipName, int tempRadarRange, int tempGunRange, int tempX, int tempY) {
    team = tempTeam;
    shipName = tempShipName;
    radarRange = tempRadarRange;
    gunRange = tempGunRange;
    x = tempX; //TODO figure out how x and y will work with the grid
    y = tempY; //TODO when you click on a Cell in the grid how will the ship be sellected
  }

  //draw the ships on the screen
  void displayShip() {
    colorShips(); //set the team color of the ship
    if (shipName == "Battleship") displayBattleship();
    if (shipName == "Aircraft Carrier") displayAircraftCarrier();
    if (shipName == "Destroyer") displayDestroyer();
    if (shipName == "Submarine") displaySubmarine();
  }

  void displayBattleship() {
    //ellipse();
  }
  void displayAircraftCarrier() {
  }
  void displayDestroyer() {
  }
  void displaySubmarine() {
  }

  void colorShips() {
    if (team == 0) fill(25, 25, 112); //navy blue
    else if (team == 1) fill(112, 25, 25); //crimson red
    else fill(255); //if a ship is not assigned a team, color it white
    
  }
}//end Ship class
