class Ship {
  int team;
  int radarRange;
  int gunRange;
  int speed;
  int x;
  int y;
  int health;
  String shipName;
  
  String ability;

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
    
    assignAbility();
  }
  
  void assignAbility(){
    if (shipName == "Battleship") ability = ""; //
    else if (shipName == "Aircraft Carrier") ability = "Scout"; //
    else if (shipName == "Destroyer") ability = ""; //
    else if (shipName == "Submarine") ability = "Dive"; //Go underwater. Cant be seen, can still be hit. Can move, but must resurface before attacking.
    else println("ERROR: Unnamed Ship");
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
  
  
  
  //Move
  void moveShip(){
    // 1: Select active spaces (spaces you can move to)
    //    Find out what spaces are x units away left and right, up and down, and a combination of the two where x is speed
    // 2: Display something on those spaces
    // 3: If the user clicks on an active space, change the possision of the ship to that space
    
    //int[] openSpaces = new int[9];
    //openSpaces = findOpenSpaces();
  }
  
  //Attack
  void attackShip(){
    
  }
  
  //Ability
  void useShipAbility(){
    
  }
  
  //int[] findOpenSpaces(){
    //return ;
  //}
  
  
  
  //when you click on a Ship, show info and actions for that Ship
  void displayShipInfo(int tempSidebarCenter, int tempSidebarLeft) {
    int sidebarCenter = tempSidebarCenter;
    int sidebarLeft = tempSidebarLeft;
    int quad1 = (sidebarLeft+sidebarCenter)/2;
    int quad3 = sidebarCenter*2-quad1;
    int buttonWidth = 400;
    int buttonHeight = 100;

    //name of the Ship
    fill(200);
    textSize(50);
    text(shipName.toUpperCase(), sidebarCenter, 100);

    if (team == activePlayer) { //if ship belongs to the active player
      //Ship stats (HP, radar range, gun range, speed, etc...)
      fill(0, 255, 0);
      textSize(25);
      text("HP: " + health, quad1, 200);
      text("SPEED: " + speed, quad3, 200);
      text("RADAR RANGE: " + radarRange, quad1, 300);
      text("GUN RANGE: " + gunRange, quad3, 300);
      
      //Commands: Move, Attack, Ability (different for each ship)
      
      //Draw the buttons
      //Move button
      rectMode(CENTER);
      fill(80);
      rect(sidebarCenter, 500, buttonWidth, buttonHeight);
      rectMode(CORNER);
      fill(200);
      textSize(50);
      text("MOVE", sidebarCenter, 500);
      
      //Attack button
      rectMode(CENTER);
      fill(80);
      rect(sidebarCenter, 650, buttonWidth, buttonHeight);
      rectMode(CORNER);
      fill(200);
      textSize(50);
      text("ATTACK", sidebarCenter, 650);
      
       //Ability button
      rectMode(CENTER);
      fill(80);
      rect(sidebarCenter, 800, buttonWidth, buttonHeight);
      rectMode(CORNER);
      fill(200);
      textSize(50);
      text(ability.toUpperCase(), sidebarCenter, 800);
      
      //Move pressed
      if(mouseX > sidebarCenter-buttonWidth/2 && mouseX < sidebarCenter+buttonWidth/2 && mouseY > 500-buttonHeight/2 && mouseY < 500+buttonHeight/2){ //if mouse is over 'move'
        //TODO make the button quickly fade darker when the mouse is over
        if(mousePressed==true){
          moveShip();
        }
      }
      
      //Attack pressed
      if(mouseX > sidebarCenter-buttonWidth/2 && mouseX < sidebarCenter+buttonWidth/2 && mouseY > 650-buttonHeight/2 && mouseY < 650+buttonHeight/2){ //if mouse is over 'attack'
        if(mousePressed==true){
          attackShip();
        }
      }
      
      //Ability pressed
      if(mouseX > sidebarCenter-buttonWidth/2 && mouseX < sidebarCenter+buttonWidth/2 && mouseY > 800-buttonHeight/2 && mouseY < 800+buttonHeight/2){ //if mouse is over 'ability'
        if(mousePressed==true){
          useShipAbility();
        }
      }
      
    }else{ //if ship dosen't belongs to the active player
      //TODO Give some info about ships the user clicks on but don't control
    }//end if ship dosen't belongs to the active player
  }//end displayShipInfo
}//end Ship class
