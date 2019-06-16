void setup() {
  size(800, 600);

  smooth(); // must be in setup or does not work
  
  loadModes();
  loadImages();
  loadVariableDeclarations();
  
}

void draw() {
  
  redrawGameField();
  playerInput();
  blockUpdate();
  playerUpdate();
  moveGameObjects();
  checkDead();
  enemyCollision();
  ui();
}
