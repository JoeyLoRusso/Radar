class Ship {
  int team;
  int radarRange;
  int gunRange;
  int speed;
  int x;
  int y;
  int health;
  String shipName;

  //Ship constructor
  Ship(int tempTeam, int tempRadarRange, int tempGunRange, int tempSpeed, int tempX, int tempY, int tempHealth, String tempShipName) {
    team = tempTeam;
    radarRange = tempRadarRange;
    gunRange = tempGunRange;
    speed = tempSpeed;
    x = tempX;
    y = tempY;
    health = tempHealth;
    shipName = tempShipName;
  }

  //draw the ships on the screen
  void displayShip() {
    colorShips(); //set the team color of the ship
    if (shipName == "Battleship") displayBattleship();
    else if (shipName == "Aircraft Carrier") displayAircraftCarrier();
    else if (shipName == "Destroyer") displayDestroyer();
    else if (shipName == "Submarine") displaySubmarine();
    else println("ERROR: Unnamed Ship");
  }

  //TODO make the size of the ships scale based on gridScale 
  //design for the Battleship
  void displayBattleship() {
    noStroke();
    ellipse(x+.5*gridScale, y+.5*gridScale, 20, 20);
  }
  //design for the Aircraft Carrier
  void displayAircraftCarrier() {
    noStroke();
    ellipse(x+.5*gridScale, y+.5*gridScale, 20, 40);
  }
  //design for the Destroyer
  void displayDestroyer() {
    noStroke();
    ellipse(x+.5*gridScale, y+.5*gridScale, 40, 20);
  }
  //design for the Submarine
  void displaySubmarine() {
    noStroke();
    ellipse(x+.5*gridScale, y+.5*gridScale, 40, 40);
  }

  //set the cloro for the ships based on what team they are on
  void colorShips() {
    if (team == 0) fill(25, 25, 112); //navy blue
    else if (team == 1) fill(112, 25, 25); //crimson red
    else fill(255); //if a ship is not assigned a team, color it white
  }//end colorShips



  //when you click on a Ship, show info and actions for that Ship
  void displayShipInfo(int tempSidebarCenter, int tempSidebarLeft) {
    int sidebarCenter = tempSidebarCenter;
    int sidebarLeft = tempSidebarLeft;
    int quad1 = (sidebarLeft+sidebarCenter)/2;
    int quad3 = sidebarCenter*2-quad1;

    //name of the Ship
    fill(200);
    textSize(50);
    text(shipName.toUpperCase(), sidebarCenter, 100);

    //Ship stats (HP, radar range, gun range, speed, etc...)
    fill(0, 255, 0);
    textSize(25);
    text("HP: " + health, quad1, 200);
    text("SPEED: " + speed, quad3, 200);
    text("RADAR RANGE: " + radarRange, quad1, 300);
    text("GUN RANGE: " + gunRange, quad3, 300);
  }//end displayShipInfo
}//end Ship class
