void debugger() { // only active when developer mode is on
  textSize(16);
  fill(255, 0, 0);
  text(frameRate, 20, 20); // display framerate
  if (dead) { // displays if you are dead
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  text("Dead?", 20, 40);
  fill(0);
  text("BGX: " + bgX, 20, 80); // displays the background's x coordinates
  text("BGX2: " + bgX2, 20, 100);
  
  text("PYV: " + pyv, 20, 140); // displays player Y velocity
  text("Gravity: " + gravity, 20, 160); // displays player gravity
  stroke(0);
  noFill();
  rect(px, py, psizeW, psizeH); // draw a hitbox for player.
  noStroke();
}
