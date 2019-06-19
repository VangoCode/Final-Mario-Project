import ddf.minim.*; //<>//
import processing.serial.*;

/*
ooooooooo.     .oooooo.   ooooo      ooo    oooooo     oooo       .o.       ooooooooo.    .oooooo..o ooooo   ooooo       .o.       oooooo     oooo  .oooooo..o oooo    oooo oooooo   oooo
 `888   `Y88.  d8P'  `Y8b  `888b.     `8'     `888.     .8'       .888.      `888   `Y88. d8P'    `Y8 `888'   `888'      .888.       `888.     .8'  d8P'    `Y8 `888   .8P'   `888.   .8' 
 888   .d88' 888      888  8 `88b.    8       `888.   .8'       .8"888.      888   .d88' Y88bo.       888     888      .8"888.       `888.   .8'   Y88bo.       888  d8'      `888. .8'  
 888ooo88P'  888      888  8   `88b.  8        `888. .8'       .8' `888.     888ooo88P'   `"Y8888o.   888ooooo888     .8' `888.       `888. .8'     `"Y8888o.   88888[         `888.8'   
 888`88b.    888      888  8     `88b.8         `888.8'       .88ooo8888.    888`88b.         `"Y88b  888     888    .88ooo8888.       `888.8'          `"Y88b  888`88b.        `888'    
 888  `88b.  `88b    d88'  8       `888          `888'       .8'     `888.   888  `88b.  oo     .d8P  888     888   .8'     `888.       `888'      oo     .d8P  888  `88b.       888     
 o888o  o888o  `Y8bood8P'  o8o        `8           `8'       o88o     o8888o o888o  o888o 8""88888P'  o888o   o888o o88o     o8888o       `8'       8""88888P'  o888o  o888o     o888o    
 
 ooooooooo.     .oooooo.   ooooo      ooo     ooooo   .oooooo.  
 `888   `Y88.  d8P'  `Y8b  `888b.     `8'     `888'  d8P'  `Y8b 
 888   .d88' 888      888  8 `88b.    8       888  888      888
 888ooo88P'  888      888  8   `88b.  8       888  888      888
 888`88b.    888      888  8     `88b.8       888  888      888
 888  `88b.  `88b    d88'  8       `888  .o.  888  `88b    d88'
 o888o  o888o  `Y8bood8P'  o8o        `8  Y8P o888o  `Y8bood8P' 
 
 Date: 06-17-2019
 Game Name: Ron.IO
 Programmer: Ron Varshavsky
 Descriptiion: Ron's version of Mario: Ron.io. Like regular mario but built for processing. Play in world 1-1 and if you're feeling adventerous, plug in an arduino
 remote and play on that instead of the keyboard
 Additional Dependencies: Arduino Controller - Built and Coded by Ron Varshavsky, handed in alongside assignment *please note arduino used is not arduino brand*
 *** if using arduino controller, set boolean "controllerConnected" to true in the botton of Variables.pde.
 *** to use arduino, it must be plugged in & have the software RUNNING on it at the time: the serials communicate. 
 */

void setup() {
  size(800, 600);

  smooth(); // must be in setup or does not work
  surface.setTitle("Ron.IO - Ron Varshavsky's Final Project" );

  loadModes(); // sets framerate, texture mode, nostroke
  loadImages(); // loads all of the images
  loadVariableDeclarations(); // loads all of the variables that need to be declared (arrays etc.)
  loadAudio(); // load all audio files
  loadFonts(); // load the font we need
  if (controllerConnected) {
    setupController(); // if you plug in a controller, load that as well
  }
}

void draw() {
  if (controllerConnected) {
    getControllerData(); // if your controller is plugged in, get the data from that controller using arduino :-)
  }

  if (state == 0) {
    menu(); // if you start up the game, load the menu
  } else if (state == 1) {
    redrawGameField(); // draw the background images
    playerInput(); // check player input
    blockUpdate(); // check all updates to the block && draw obstacles
    playerUpdate(); // all things related to player input
    moveGameObjects(); // move the obstacles & background when you get halfway to the screen
    checkDead(); // check if the player is dead
    checkWin(); // check if the player has won
    ui(); // draw the UI
    if (debug) {
      debugger(); // if in UI mode (press ` or ~) open developer options
    }
  } else if (state ==2) { // if you win, go to win screen
    winScreen();
  } else if (state == 3) { // if you lose go to lose screen
    loseScreen();
  }
}
