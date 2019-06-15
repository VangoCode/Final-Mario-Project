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
  {
    0, h-30, 200, 30, 1 // initial block
  }, 
  {
    -50, 0, 50, h, 3 // back wall
  }, 
  {
    10700, 0, 50, h, 3 // end wall
  },
  // platforms
  {
    200, h-30, 200, 30, 1
  }, 
  {
    400, h-30, 200, 30, 1
  }, 
  {
    600, h-30, 200, 30, 1
  }, 
  {
    800, h-30, 200, 30, 1
  }, 
  {
    900, h-60, 200, 60, 1
  }, 
  {
    1000, h-120, 200, 120, 1
  }, 
  {
    1200, h-30, 200, 30, 1
  }, 
  {
    1400, h-60, 200, 60, 1
  }, 
  {
    1600, h-30, 200, 30, 1
  }, 
  {
    1800, h-30, 200, 30, 1
  }, 
  {
    2100, h-30, 200, 30, 1
  }, 
  {
    2300, h-30, 200, 30, 1
  }, 
  {
    2500, h-30, 200, 30, 1
  }, 
  {
    2700, h-30, 200, 30, 1
  },
  {
    2900, h-30, 200, 30, 1
  },
  {
    3100, h-30, 200, 30, 1
  },
  {
    3400, h-30, 200, 30, 1
  },
  {
    3700, h-30, 200, 30, 1
  },
  {
    3900, h-30, 200, 30, 1
  },
  {
    4100, h-30, 200, 30, 1
  },
  {
    4300, h-30, 200, 30, 1
  },
  {
    4500, h-30, 200, 30, 1
  },
  {
    4700, h-30, 200, 30, 1
  },
  {
    5000, h-30, 200, 30, 1
  },
  {
    5200, h-30, 200, 30, 1
  },
  {
    5400, h-30, 200, 30, 1
  },
  {
    5600, h-30, 200, 30, 1
  },
  {
    5800, h-30, 200, 30, 1
  },
  {
    6100, h-30, 200, 30, 1
  },
  {
    6300, h-30, 200, 30, 1
  },
  {
    6500, h-30, 200, 30, 1
  },
  {
    6700, h-60, 200, 60, 1
  },
  {
    6900, h-120, 200, 120, 1
  },
  {
    7100, h-120, 200, 120, 1
  },
  {
    7300, h-120, 200, 120, 1
  },
  {
    7500, h-60, 200, 60, 1
  },
  {
    7800, h-30, 200, 30, 1
  },
  {
    8000, h-30, 200, 30, 1
  },
  {
    8200, h-30, 200, 30, 1
  },
  {
    8500, h-30, 200, 30, 1
  },
  {
    8700, h-30, 200, 30, 1
  },
  {
    8900, h-30, 200, 30, 1
  },
  {
    9100, h-30, 200, 30, 1
  },
  {
    9300, h-30, 200, 30, 1
  },
  {
    9700, h-30, 200, 30, 1
  },
  {
    9900, h-30, 200, 30, 1
  },
  {
    10100, h-30, 200, 30, 1
  },
  {
    10300, h-30, 200, 30, 1
  },
  {
    10500, h-30, 200, 30, 1
  },
  // pipes
  {
    2000, h-100, 100, 100, 2
  }, 
  {
    3600, h-100, 100, 100, 2
  }, 
  {
    4900, h-100, 100, 100, 2
  },
  {
    8400, h-100, 100, 100, 2
  },


  // question boxes
  {
    550, h-175, 30, 30, 4
  }, {
    660, h-175, 30, 30, 4
  }, {
    690, h-175, 30, 30, 4
  }, {
    2600, h-175, 30, 30, 4
  }, 
  {
    2740, h-175, 30, 30, 4
  },
  {
    4380, h-175, 30, 30, 4
  },
  {
    6300, h-175, 30, 30, 4
  },
  {
    7300, h-265, 30, 30, 4
  },
  
  // square tile boxes
  {
    2710, h-175, 30, 30, 5
  },
  {
    2770, h-175, 30, 30, 5
  },
  
  {
    2870, h-175, 30, 30, 5
  },
  {
    2900, h-175, 30, 30, 5
  },
  {
    3750, h-220, 30, 30, 5
  }, 
  {
    3780, h-220, 30, 30, 5
  }, 
  {
    3810, h-220, 30, 30, 5
  }, 
  {
    3840, h-220, 30, 30, 5
  }, 
  {
    3870, h-220, 30, 30, 5
  }, 
  
  {
    4200, h-175, 30, 30, 5
  },
  {
    4230, h-175, 30, 30, 5
  },
  {
    4260, h-175, 30, 30, 5
  },
  
  {
    4290, h-220, 30, 30, 5
  },
  {
    4320, h-220, 30, 30, 5
  },
  {
    4350, h-220, 30, 30, 5
  },
  {
    4410, h-175, 30, 30, 5
  },
  {
    4440, h-175, 30, 30, 5
  },
  {
    5200, h-175, 30, 30, 5
  },
  {
    5300, h-175, 30, 30, 5
  },
  {
    5400, h-175, 30, 30, 5
  },
  {
    8700, h-175, 30, 30, 5
  },
  {
    8730, h-175, 30, 30, 5
  },
  {
    8760, h-175, 30, 30, 5
  },
  {
    8790, h-175, 30, 30, 5
  },
  {
    9900, h-175, 30, 30, 5
  },
  {
    9930, h-175, 30, 30, 5
  },
  {
    9960, h-175, 30, 30, 5
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


PImage mario ;
PImage floor;
PImage pipe;
PImage questionBlock;
PImage coin;
PImage breakBlock;

int currentFrame = 0;                 // current view of mario
String marioDir = "left";             // direction in which mario is facing

int numFrames = 12;   // the number of frames
PImage [] images = new PImage [numFrames]; //make the array
int[] nextLeftPic = {1, 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] nextRightPic = {4, 4, 4, 4, 5, 6, 7, 5, 4, 4, 4, 4};

boolean falling = true;

int jumpPower = 12;
boolean colliding = true;


void setup() {
  size(800, 600);

  noStroke();
  noSmooth();
  frameRate(30);
  textureMode(NORMAL);

  mario = loadImage("pic1.bmp");
  floor = loadImage("ground.jpg");
  pipe = loadImage("pipe.png");
  questionBlock = loadImage("question_block.jpg");
  breakBlock = loadImage("breakable_block.jpg");
  coin = loadImage("coin.png");
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
  for(int i = 0; i < blockVisible.length; i++) {
    blockVisible[i] = true;
  }
}

void blockUpdate() {
  for (int i = 0; i<blocks.length; i++) {

    fill(100);

    if (blocks[i][4]==0) {
      fill(0, 250, 0);
    }

    if (px+pxv+psizeW>blocks[i][0] && px+pxv<blocks[i][0]+blocks[i][2] && py+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3]) {
      if (blocks[i][4]==0) {
        dead=true;
      }
      pxv=0;
      colliding=true;
    } else {
      colliding = false;
    }

    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+pyv+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3]) {
      if (blocks[i][4]==0) {
        dead=true;
      }

      pyv=0;
      gravity=0;
      falling = false;
    }

    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+psizeW>blocks[i][1] && py+pyv<blocks[i][1]+blocks[i][3]) {
      if (blocks[i][4]==0) {
        dead=true;
      }
      if(pyv<0 && blocks[i][4] == 5) {
        blockVisible[i] = false;
      }
      pyv=0;
      gravity=0;
    }

    if (blocks[i][4] == 1 && blockVisible[i]) {
      image(floor, blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 3 && blockVisible[i]) {
      rect(blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 2 && blockVisible[i]) {
      image(pipe, blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 4 && blockVisible[i]) {
      image(questionBlock, blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 5 && blockVisible[i]) {
      image(breakBlock, blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    }
  }
}



boolean[] keys = new boolean[256];
void keyPressed() {
  keys[keyCode]=true;
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
  stroke(0);
  noFill();
  rect(px, py, psizeW, psizeH);
  noStroke();
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
}



void draw() {
  background(250);
  
  bgSpeed = pspeed;

  playerInput();
  blockUpdate();
  playerUpdate();
  moveGameObjects();

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
}
