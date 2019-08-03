class Ship {
  int team;
  int radarRange;
  int gunRange;
  int x;
  int y;
  int health;
  String shipName;
  
  //Ship constructor
  Ship(int tempTeam, int tempRadarRange, int tempGunRange, int tempX, int tempY, int tempHealth, String tempShipName) {
    team = tempTeam;
    radarRange = tempRadarRange;
    gunRange = tempGunRange;
    x = tempX;
    y = tempY;
    health = tempHealth;
    shipName = tempShipName;
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
    noStroke();
    ellipse(x+.5*gridScale,y+.5*gridScale,20,20);
  }
  void displayAircraftCarrier() {
    noStroke();
    ellipse(x+.5*gridScale,y+.5*gridScale,20,40);
  }
  void displayDestroyer() {
    noStroke();
    ellipse(x+.5*gridScale,y+.5*gridScale,40,20);
  }
  void displaySubmarine() {
    noStroke();
    ellipse(x+.5*gridScale,y+.5*gridScale,40,40);
  }

  void colorShips() {
    if (team == 0) fill(25, 25, 112); //navy blue
    else if (team == 1) fill(112, 25, 25); //crimson red
    else fill(255); //if a ship is not assigned a team, color it white
    
  }
}//end Ship class
