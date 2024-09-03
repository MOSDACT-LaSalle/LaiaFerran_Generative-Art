void setup (){
size (500,500);
frameRate (160);
}


void draw (){

  rectMode(CENTER);
  

  
    push ();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  fill (255); // rectangle que es veu a sota. 
  rect (0, 0, 60,400);
  fill (0); //rectangle que es veu a sobre.
  rect (0, 0, 40,400);
    pop ();
  
  
}
