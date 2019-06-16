boolean[] keys = new boolean[256];
void keyPressed() {
  keys[keyCode]=true;
  if (key == '~' || key == '`') {
    debug = !debug;
  }
};
void keyReleased() {
  keys[keyCode]=false;
}
