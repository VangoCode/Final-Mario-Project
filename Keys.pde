boolean[] keys = new boolean[256]; // the keys array
void keyPressed() {
  keys[keyCode]=true; // set it to all keycodes
  if (key == '~' || key == '`') { // enable developer mode
    debug = !debug;
  }
  
};
void keyReleased() {
  keys[keyCode]=false; // if keys aren't pressed you can't use keycodes
}
