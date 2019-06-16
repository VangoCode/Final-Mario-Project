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
