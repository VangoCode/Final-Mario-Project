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
      if (blocks[i][4]!=6) {
        pxv=0;
        colliding=true;
      } else {
        blockVisible[i] = false;
        coins +=1;
      }
    } else {
      colliding = false;
    }

    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+pyv+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3] && blockVisible[i]) {
      if (blocks[i][4]==0) {
        blockVisible[i] = false;
        gravity -= 3;
      }
      
      
      
      if (blocks[i][4]!=6) {
        pyv=0;
        gravity=0;
        falling = false;
      } else {
        blockVisible[i] = false;
        coins +=1;
      }
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

      if (blocks[i][4]!=6) {
        pyv=0;
        gravity=0;
      } else {
        blockVisible[i] = false;
        coins +=1;
      }
    }

    if (blocks[i][4] == 3) {
      rect(blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 5 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 6 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if(blocks[i][4] == 0 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] !=5 && blocks[i][4] != 6 && blocks[i][4] != 0) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    }
  }
}
