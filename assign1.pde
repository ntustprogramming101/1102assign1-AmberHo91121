  PImage bgImg;
  PImage groundhogImg;
  PImage lifeImg;
  PImage robotImg;
  PImage soilImg;
  PImage soldierImg;//pic
  int soldierRandomX;
  int soldierRandomY;//soldierPlace
  int robotRandomX;
  int robotRandomY;//robotPlace
  int soldierSpeedX;//soldierSpeed
  int xSoldier;
  int ySoldier;//soldier
  int xRobot;
  int yRobot;//robot
  int laser;
  int xLaser, yLaser;//laser
  int boarder;//boarder
  int x;
  int y;
  
void setup() {
  size(640, 480, P2D);
  bgImg = loadImage("img/bg.jpg");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soilImg = loadImage("img/soil.png");
  soldierImg = loadImage("img/soldier.png");
  
  soldierRandomX = floor(random(6));
  soldierRandomY = floor(random(4));
  xSoldier = soldierRandomX*80;
  ySoldier = 160+soldierRandomY*80;//soldierMovement
  
  robotRandomX = floor(random(6));//forTestingLaser
  robotRandomY = floor(random(4));
  xRobot = 160+robotRandomX*80;
  yRobot = 37+160-40+robotRandomY*80;//robotPlacement
    if(soldierRandomY == robotRandomY){
      floor(random(4));
      robotRandomY = floor(random(4));
      yRobot = 37+160-40+robotRandomY*80;
    }//SeparateTheRobotAndSoldier
  
  noStroke() ;
  fill(255, 0, 0);
  ellipse(xLaser, yLaser+5, 10, 10);
  ellipse(xLaser+20, yLaser+5, 10, 10);
  rect(xLaser, yLaser, 20, 10);
  xLaser = xRobot+25-20;
  yLaser = yRobot+37-5;//LaserMovement
  
  boarder=xLaser-180+25;//boarderX
  
  // Enter Your Setup Code Here
}


void draw() {
  size(640,480,P2D);
  bgImg = loadImage("img/bg.jpg");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soilImg = loadImage("img/soil.png");
  soldierImg = loadImage("img/soldier.png");
  
//oneStar

  image(bgImg,0,0);//bg
  fill(124,204,25);
  strokeWeight(0);
  rect(0,145,640,15);//grass
  image(soilImg,0,160);
  //soil
  fill(253,184,19);
  strokeWeight(5);
  stroke(255,255,0);
  ellipse(590,50,120,120);
  //sun
  image(groundhogImg,width/2-40,80);
  //groundhog
  image(lifeImg,10,10);
  image(lifeImg,30+50,10);
  image(lifeImg,100+50,10);
  //life
  
//twoStars
  
  soldierRandomX = floor(random(6));
  soldierRandomY = floor(random(4));
  image(soldierImg , xSoldier , ySoldier);
  xSoldier = xSoldier+5;
  xSoldier %=640;
  
  
  //soldierMoveInsideTheScreen
  //sodlier
  
  robotRandomX =floor(random(6));
  robotRandomY =floor(random(4));
  image(robotImg , xRobot , yRobot);
  //robot

//threeStars
  noStroke() ;
  fill(255, 0, 0);
  ellipse(xLaser, yLaser+5, 10, 10);
  ellipse(xLaser+20, yLaser+5, 10, 10);
  rect(xLaser, yLaser, 20, 10);
  xLaser = xLaser-2;
  xLaser %= 640;
    if (xLaser <= boarder || xLaser <= 0){
        xLaser= boarder+180-25;
        xLaser = xLaser-2;
        xLaser = xLaser+640;
        xLaser %= 640; }//aboveWereDoneInMarch4th
  // Enter Your Code Here
}
