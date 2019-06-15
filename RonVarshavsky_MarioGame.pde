int w = 800;
int h = 600;

int[][] blocks = {

  //boundary box
/*  {
 0, -21, w, 20, 1
 }
 , 
 {
 0, h, w, 20, 1
 }
 , 
 {
 -21, 0, 20, h, 1
 }
 , 
 {
 w, 0, 20, h, 1
 }
 , */


/*platforms*/

  // FOR FIFTH NUMBER: 0 == ENEMY, 1 == FLOOR, 2 == PIPE, 3==WALL, 4 == QUESTION, 5== TILE
  // SIXTH NUMBER IS FOR COIN; 1 = COIN_BLOCK 0 = USED BLOCK / PLATFORM
  {
    0, h-30, 200, 30, 1,0 // initial block
  }, 
  {
    -50, 0, 50, h, 3,0 // back wall
  }, 
  {
    10700, 0, 50, h, 3 ,0// end wall
  }, 
  // platforms
  {
    200, h-30, 200, 30, 1,0
  }, 
  {
    400, h-30, 200, 30, 1,0
  }, 
  {
    600, h-30, 200, 30, 1,0
  }, 
  {
    800, h-30, 200, 30, 1, 0
  }, 
  {
    900, h-60, 200, 60, 1, 0
  }, 
  {
    1000, h-120, 200, 120, 1, 0
  }, 
  {
    1200, h-30, 200, 30, 1, 0
  }, 
  {
    1400, h-60, 200, 60, 1, 0
  }, 
  {
    1600, h-30, 200, 30, 1, 0
  }, 
  {
    1800, h-30, 200, 30, 1, 0
  }, 
  {
    2100, h-30, 200, 30, 1, 0
  }, 
  {
    2300, h-30, 200, 30, 1, 0
  }, 
  {
    2500, h-30, 200, 30, 1, 0
  }, 
  {
    2700, h-30, 200, 30, 1, 0
  }, 
  {
    2900, h-30, 200, 30, 1, 0
  }, 
  {
    3100, h-30, 200, 30, 1, 0
  }, 
  {
    3400, h-30, 200, 30, 1, 0
  }, 
  {
    3700, h-30, 200, 30, 1, 0
  }, 
  {
    3900, h-30, 200, 30, 1, 0
  }, 
  {
    4100, h-30, 200, 30, 1, 0
  }, 
  {
    4300, h-30, 200, 30, 1, 0
  }, 
  {
    4500, h-30, 200, 30, 1, 0
  }, 
  {
    4700, h-30, 200, 30, 1, 0
  }, 
  {
    5000, h-30, 200, 30, 1, 0
  }, 
  {
    5200, h-30, 200, 30, 1, 0
  }, 
  {
    5400, h-30, 200, 30, 1, 0
  }, 
  {
    5600, h-30, 200, 30, 1, 0
  }, 
  {
    5800, h-30, 200, 30, 1, 0
  }, 
  {
    6100, h-30, 200, 30, 1, 0
  }, 
  {
    6300, h-30, 200, 30, 1, 0
  }, 
  {
    6500, h-30, 200, 30, 1, 0
  }, 
  {
    6700, h-60, 200, 60, 1, 0
  }, 
  {
    6900, h-120, 200, 120, 1, 0
  }, 
  {
    7100, h-120, 200, 120, 1, 0
  }, 
  {
    7300, h-120, 200, 120, 1, 0
  }, 
  {
    7500, h-60, 200, 60, 1, 0
  }, 
  {
    7800, h-30, 200, 30, 1, 0
  }, 
  {
    8000, h-30, 200, 30, 1, 0
  }, 
  {
    8200, h-30, 200, 30, 1, 0
  }, 
  {
    8500, h-30, 200, 30, 1, 0
  }, 
  {
    8700, h-30, 200, 30, 1, 0
  }, 
  {
    8900, h-30, 200, 30, 1, 0
  }, 
  {
    9100, h-30, 200, 30, 1, 0
  }, 
  {
    9300, h-30, 200, 30, 1, 0
  }, 
  {
    9700, h-30, 200, 30, 1, 0
  }, 
  {
    9900, h-30, 200, 30, 1, 0
  }, 
  {
    10100, h-30, 200, 30, 1, 0
  }, 
  {
    10300, h-30, 200, 30, 1, 0
  }, 
  {
    10500, h-30, 200, 30, 1, 0
  }, 
  // pipes
  {
    2000, h-100, 100, 100, 2, 0
  }, 
  {
    3600, h-100, 100, 100, 2, 0
  }, 
  {
    4900, h-100, 100, 100, 2, 0
  }, 
  {
    8400, h-100, 100, 100, 2, 0
  }, 


  // question boxes
  {
    550, h-175, 30, 30, 4, 1
  }, {
    660, h-175, 30, 30, 4, 1
  }, {
    690, h-175, 30, 30, 4, 1
  }, {
    2600, h-175, 30, 30, 4,1
  }, 
  {
    2740, h-175, 30, 30, 4, 1
  }, 
  {
    4380, h-175, 30, 30, 4, 1
  }, 
  {
    6300, h-175, 30, 30, 4, 1
  }, 
  {
    7300, h-265, 30, 30, 4, 1
  }, 

  // square tile boxes
  {
    2710, h-175, 30, 30, 5, 0
  }, 
  {
    2770, h-175, 30, 30, 5, 0
  }, 

  {
    2870, h-175, 30, 30, 5, 0
  }, 
  {
    2900, h-175, 30, 30, 5, 0
  }, 
  {
    3750, h-220, 30, 30, 5, 0
  }, 
  {
    3780, h-220, 30, 30, 5, 0
  }, 
  {
    3810, h-220, 30, 30, 5, 0
  }, 
  {
    3840, h-220, 30, 30, 5, 0
  }, 
  {
    3870, h-220, 30, 30, 5, 0
  }, 

  {
    4200, h-175, 30, 30, 5, 0
  }, 
  {
    4230, h-175, 30, 30, 5, 0
  }, 
  {
    4260, h-175, 30, 30, 5, 0
  }, 

  {
    4290, h-220, 30, 30, 5, 0
  }, 
  {
    4320, h-220, 30, 30, 5, 0
  }, 
  {
    4350, h-220, 30, 30, 5, 0
  }, 
  {
    4410, h-175, 30, 30, 5, 0
  }, 
  {
    4440, h-175, 30, 30, 5, 0
  }, 
  {
    5200, h-175, 30, 30, 5, 0
  }, 
  {
    5300, h-175, 30, 30, 5, 0
  }, 
  {
    5400, h-175, 30, 30, 5, 0
  }, 
  {
    8700, h-175, 30, 30, 5, 0
  }, 
  {
    8730, h-175, 30, 30, 5, 0
  }, 
  {
    8760, h-175, 30, 30, 5, 0
  }, 
  {
    8790, h-175, 30, 30, 5, 0
  }, 
  {
    9900, h-175, 30, 30, 5, 0
  }, 
  {
    9930, h-175, 30, 30, 5, 0
  }, 
  {
    9960, h-175, 30, 30, 5, 0
  }, 

};
boolean[] blockVisible = new boolean[blocks.length];


float psizeW;
float psizeH;
float px;
float py;
float rx=px;
float ry=py;
float pxv=0;
float pyv=0;
float pspeed=5;
float gravity=0;
float bgSpeed;

boolean dead = false;
boolean debug = false;



PImage mario ;
/*PImage floor;
 PImage pipe;
 PImage questionBlock;*/
PImage coin;
// PImage breakBlock;

PImage platform[] = new PImage[blocks.length];


int currentFrame = 0;                 // current view of mario
String marioDir = "left";             // direction in which mario is facing

int numFrames = 12;   // the number of frames
PImage [] images = new PImage [numFrames]; //make the array
int[] nextLeftPic = {1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] nextRightPic = {4, 4, 4, 4, 5, 6, 7, 5, 4, 4, 4, 4};

boolean falling = true;

int jumpPower = 12;
boolean colliding = true;

int bgX, bgX2;
PImage bg, bg_inverse;

int coins = 0;

void setup() {
  size(800, 600);

  noStroke();
  noSmooth();
  frameRate(30);
  textureMode(NORMAL);

  mario = loadImage("pic1.bmp");
  /*
   floor = loadImage("ground.jpg");
   pipe = loadImage("pipe.png");
   questionBlock = loadImage("question_block.jpg");
   breakBlock = loadImage("breakable_block.jpg");
   */
  coin = loadImage("coin.png");
  bg = loadImage("background.png");
  bg_inverse = loadImage("background_inverse.png");

  for (int i =0; i < platform.length; i++) {
    if (blocks[i][4] == 1) {
      platform[i] = loadImage("ground.jpg");
    } else if (blocks[i][4] == 2) {
      platform[i] = loadImage("pipe.png");
    } else if (blocks[i][4] == 4) {
      platform[i] = loadImage("question_block.jpg");
    } else if (blocks[i][4] == 5) {
      platform[i] = loadImage("breakable_block.jpg");
    }
  }

  psizeH = mario.height;
  psizeW = mario.width;

  px=w/2;
  py=h-psizeH-psizeH/2;
  rx=px;
  ry=py;

  for (int i = 0; i < images.length; i++) {
    String imageName = "pic" + nf (i, 1) + ".bmp";
    images [i] = loadImage (imageName); // load each image
  }
  for (int i = 0; i < blockVisible.length; i++) {
    blockVisible[i] = true;
  }

  bgX2 = 910;
}

void blockUpdate() {
  for (int i = 0; i<blocks.length; i++) {

    fill(100);

    if (blocks[i][4]==0) {
      fill(0, 250, 0);
    }

    if (px+pxv+psizeW>blocks[i][0] && px+pxv<blocks[i][0]+blocks[i][2] && py+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3] && blockVisible[i]) {
      if (blocks[i][4]==0) {
        dead=true;
      }
      pxv=0;
      colliding=true;
    } else {
      colliding = false;
    }

    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+pyv+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3] && blockVisible[i]) {
      if (blocks[i][4]==0) {
        dead=true;
      }

      pyv=0;
      gravity=0;
      falling = false;
    }

    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+psizeW>blocks[i][1] && py+pyv<blocks[i][1]+blocks[i][3] && blockVisible[i]) {
      if (blocks[i][4]==0) {
        dead=true;
      }
      if (pyv<0 && blocks[i][4] == 5) {
        blockVisible[i] = false;
      } else if (pyv<0 && blocks[i][4] == 4 && blocks[i][5] == 1) {
        platform[i] = loadImage("used_block.png");
        coins+=1;
        blocks[i][5] = 0;
      }
      pyv=0;
      gravity=0;
    }

    if (blocks[i][4] == 3) {
      rect(blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 5 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] !=5) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    }
  }
}



boolean[] keys = new boolean[256];
void keyPressed() {
  keys[keyCode]=true;
  if(key == '~' || key == '`') {
    debug = !debug;
  }
};
void keyReleased() {
  keys[keyCode]=false;
};
void playerInput() {
  pxv=0;
  pyv=0;


  if (dead==false) {
    if (keys[UP] && falling==false) {
      gravity-=jumpPower;
    }
    if (keys[LEFT]) {
      pxv=-pspeed;
      marioDir = "left";
      if (!falling) {
        currentFrame = nextLeftPic [currentFrame];
      }
    } else if (keys[RIGHT]) {
      pxv=pspeed;
      marioDir = "right";
      if (!falling) {
        currentFrame = nextRightPic [currentFrame];
      }
    } else {
      if (marioDir == "left") currentFrame = 0;          // when standing,the animation view is either 1 or 5,
      else if (marioDir == "right") currentFrame = 4 ;   // depending on the direction in which
      // mario is facing
    }

    if (py > height) {
      dead = true;
    }

    if (keys[SHIFT]) {
      pspeed = 10;
    } else {
      pspeed = 5;
    }
  }

  if (keys[82]) {
    dead=false;
    px=rx;
    py=ry;
  }

  pyv+=gravity;
  gravity+=1;

  falling = true;
}
void playerUpdate() {
  px+=pxv;
  py+=pyv;

  fill(255, 0, 0);
  if (dead==true) {
    fill(255, 150, 150);
  }

  image(images [currentFrame], px, py, images[currentFrame].width, images[currentFrame].height);
  psizeH = mario.height;
  //  rect(px, py, psize, psize);
}

void moveGameObjects() {

  px = constrain(px, 200, width-200);

  for (int i = 0; i<blocks.length; i++) {
    if (pxv!=0) {
      if (px >= width-200 && keys[RIGHT]) {
        blocks[i][0] -= bgSpeed;
      } else if (px <= 200 &&keys[LEFT]) {
        blocks[i][0] += bgSpeed;
      }
    } else {
    }
  }

  if (pxv!=0) {
    if (px >= width-200 && keys[RIGHT]) {
      bgX -= bgSpeed;
      bgX2 -= bgSpeed;
    } else if (px <= 200 &&keys[LEFT]) {
      bgX += bgSpeed;
      bgX2 += bgSpeed;
    }
  }
}

void debugger() {
  textSize(16);
  fill(255, 0, 0);
  text(frameRate, 20, 20);
  if (dead) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  text("Dead?", 20, 40);
  fill(0);
  text("PYV: " + pyv, 20, 60);
  text("BGX: " + bgX, 20, 80);
  text("BGX2: " + bgX2, 20, 100);
  stroke(0);
  noFill();
  rect(px, py, psizeW, psizeH);
  noStroke();
}

void draw() {
  //background(250);
  image(bg, bgX, 0, 910, height);
  image(bg_inverse, bgX2, 0, 910, height);

  if (bgX < -910) {
    bgX = 910;
  } else if (bgX > 910) {
    bgX = -910;
  }

  if (bgX2 < -910) {
    bgX2 = 910;
  } else if (bgX2 > 910) {
    bgX2 = -910;
  }

  bgSpeed = pspeed;

  playerInput();
  blockUpdate();
  playerUpdate();
  moveGameObjects();

  if(debug) {
    debugger();
  }

  image(coin, width-130, 20, 50, 50);
  fill(255);
  textSize(50);
  text(coins, width-80, 65);
}
