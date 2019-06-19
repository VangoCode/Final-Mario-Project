void blockUpdate() {
  for (int i = 0; i<blocks.length; i++) { // loop through all obstacles

    if (blockVisible[i]) { // if the block is visible and it's an enemy or a mushroom, move it vertically
      if (blocks[i][4] == 0 || blocks[i][4] == 7) {
        blocks[i][0] += blocks[i][6];
      }
    }

    for (int n = 0; n<blocks.length; n++) { // enemy collision, second loop to loop through objects twice
      if (blocks[n][0]+blocks[n][2]>blocks[i][0] && blocks[n][0]<blocks[i][0]+blocks[i][2] && blocks[n][1]+blocks[n][3]>blocks[i][1] && blocks[n][1]<blocks[i][1]+blocks[i][3] && blockVisible[i] && blocks[n][4] == 0 && blocks[i][4] != 0) { // check if an enemy collides with the wall. if so move it back
        blocks[n][6] *= -1;
      }
      if (blocks[n][0]+blocks[n][2]>blocks[i][0] && blocks[n][0]<blocks[i][0]+blocks[i][2] && blocks[n][1]+blocks[n][3]>blocks[i][1] && blocks[n][1]<blocks[i][1]+blocks[i][3] && blockVisible[i] && blocks[n][4] == 7 && blocks[i][4] != 7 && blocks[i][4] != 6) { // check if mushroom collides with the wall. if so move it back
        blocks[n][6] *= -1;
      }
    }

    // PLAYER COLLISION
    if (px+pxv+psizeW>blocks[i][0] && px+pxv<blocks[i][0]+blocks[i][2] && py+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3] && blockVisible[i] && px != blocks[2][0] && px+pxv+psizeW != blocks[2][0]) { // checks top collision
      if (blocks[i][4]==0) { // if you're colliding with an enemy
        if(size != 1) { // if your size is not one, it must be two so go down a size and trigger the downsize sound effect
          size--;
          downSize.trigger();
          score -= 500; // if you lose size lose 500 score
        } else { // otherwise your size is already one and YOU MUST DIE
          dead=true;
          score -=1000; // if you die lose 1000 score
        }
      }
      if (blocks[i][4]!=6 && blocks[i][4]!=7) { // if you're not hitting a coin or a mushroom, collide with the object and have it like a wall
        pxv=0;
        colliding=true;
      } else {
        blockVisible[i] = false; // otherwise it's a coin or mushroom, so make it invisible
        if (blocks[i][4] == 6) { // add one to the coins and trigger sound if it's a coin
          coins +=1;
          score += 1000; // if you get a coin get 1000 score
          coinSound.trigger();
        } else { // otherwise it's a mushroom
          if (size != 2) { // if your size isn't two, it must be one so set it to two and make you BIG BOY
            size = 2;
            score+=5000; // add 5000 to score for score going up up
            if (pyv == 0) { // hack because adding size takes you into ground - if you're standing it teleports you to ground level
              py = height-mario.height-30;
            }
            upSize.trigger(); // trigger the up size sound effect
          } else {
            morePoints.trigger(); // if you're already at full size, trigger sound effect
            score+=20000; // add a lot of score because it doesn't do anything else
          }
        }
      }
    } else {
      colliding = false; // otherwise player isn't colliding with anything.
    }

    if (blockVisible[i] == true) { // if the block is visible
      if (blocks[i][4] == 7 && blocks[i][1] < height-61 && blocks[i][0] > blocks[i-1][0]+blocks[i-1][2]) { // if the block is a mushroom, keep moving right until it falls off it's parent block
        blocks[i][1] += 2; // move down slowly
        blocks[i][0] += blocks[i][5]; // move it based on it's direction
      } else if (blocks[i][4] == 7 && blocks[i][0] > blocks[i+1][0]) {
        blocks[i][1] = height-60; // hack instead of adding it's own physics system: just make it stay at ground level :-)
      }
    }


    // top collision player:object
    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+pyv+psizeH>blocks[i][1] && py<blocks[i][1]+blocks[i][3] && blockVisible[i]  && px != blocks[2][0] && px != blocks[2][0] && px+pxv+psizeW != blocks[2][0]) {
      if (blocks[i][4]==0) { // if it's an enemy AKA a goomba make it invisible, flutter a bit in the air and play the sound
        blockVisible[i] = false;
        gravity -= jumpPower;
        kill_goomba.trigger();
        score+=3000;
      } else { // otherwise it's not a goomba, so stand on top of it like normal

        if (blocks[i][4]!=6) { // if it's not a coin, that is.
          pyv=0;
          gravity=0;
          falling = false;
        } else { // in that case, it's a coin so make it invisible add some valuesss and play the sound
          blockVisible[i] = false;
          coins +=1;
          coinSound.trigger();
          score+=1000;
        }
      }
    }
    // bottom collision player:object
    if (px+psizeW>blocks[i][0] && px<blocks[i][0]+blocks[i][2] && py+psizeW>blocks[i][1] && py+pyv<blocks[i][1]+blocks[i][3] && blockVisible[i]  && px != blocks[2][0] && px != blocks[2][0] && px+pxv+psizeW != blocks[2][0]) {
      if (blocks[i][4]==0) { // if it's an enemy you're dead
        dead=true;
      }
      if (pyv<0 && blocks[i][4] == 5) { // if it's a breakable block, make it invislbe, play the sound and add some score
        blockVisible[i] = false;
        break_block.trigger();
        score += 500;
      } else if (pyv<0 && blocks[i][4] == 4 && blocks[i][5] == 1) { // if it's a coin block, then make it a used block image, add some values, add a coin sound and set the coin value to 0
        platform[i] = loadImage("used_block.png");
        coins+=1;
        coinSound.trigger();
        score+=1000;
        blocks[i][5] = 0;
      } else if (pyv<0 && blocks[i][4] == 4 && blocks[i][5] == 2) { // otherwise it's a mushroom block so add some values, make it a used block, but play a different sound and display the mushroom
        platform[i] = loadImage("used_block.png");
        blockVisible[i+1] = true;
        score+=1500;
        mushroom.trigger();
      }

      if (blocks[i][4]!=6 && blocks[i][4]!=0) { // if you're colliding with the top and it's not a coin or a enemy stand on top
        pyv=0;
        gravity=0;
      } else { // otherwise, it becomes invisible, and you get a coin
        blockVisible[i] = false;
        coins +=1;
        coinSound.trigger();
        score+=500;
      }
    }
  }
}
