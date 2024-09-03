/*---------------------------------
 Name: Laia Ferran
 Date: Sept 2024
 Tittle: Cosmic Chaos: The Moiré Odyssey
 Description:
Being a graphic and motion designer, I enjoy working with basic geometries.
Therefore, my goal has been to work with geometries and make them change color
and scale randomly. Through the repetition and rotation of the geometries from
a central point, a unique shape with certain volumes is eventually formed, which
I find visually interesting. I’ve also kept the stroke, which creates a moiré effect
that I like, generating a new texture even though I'm only working with solid colors.
In my explorations as a motion designer, I like to use geometries and colors,
and I usually do this with After Effects. I have tried to translate it into Processing.
I love how it generates completely different shapes and colors every time I run
it—super cool.

  Links:
https://www.instagram.com/p/CZNLsQ7t2X1/
https://www.instagram.com/p/CYzGLgTvEho/
https://www.instagram.com/p/CXeJZVIKW8J/
 -----------------------------------*/

 

float angleOffset;
float rect1Width, rect1Height, rect2Width, rect2Height;
float rect3Width, rect3Height, rect4Width, rect4Height; 
float rect5Width, rect5Height, rect6Width, rect6Height; 

color rect1Color, rect2Color, rect3Color, rect4Color, rect5Color, rect6Color;

void setup() {
  size(1080, 1080);
  background(color(random(255), random(255), random(255)));
  
  
  angleOffset = random(TWO_PI);  
  rect1Width = random(30, 100);   
  rect1Height = random(10, 500); 
  rect2Width = random(20, rect1Width - 10); 
  rect2Height = random(30, 400); 
  rect3Width = random(5, 50);  
  rect3Height = random(40, 90);
  rect4Width = random(20, 60);   
  rect4Height = random(200, 100);  
  rect5Width = random(30, 80);   
  rect5Height = random(300, 400); 
  rect6Width = random(20, 80);  
  rect6Height = random(40, 300);

  // Inicializar los colores
  rect1Color = color(random(255), random(255), random(255)); 
  rect2Color = color(random(255), random(255), random(255));  
  rect3Color = color(random(255), random(255), random(255)); 
  rect4Color = color(random(255), random(255), random(255));  
  rect5Color = color(random(255), random(255), random(255));  
  rect6Color = color(random(255), random(255), random(255));  
}

void draw() {
  //stroke (color(random(255), random(255), random(255)));
  rectMode(CENTER);
  
  
  // 1r
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect1Color); 
  rect(0,0, rect1Width, rect1Height); 
  pop();
  
  // 2n - colors
  push();
  rectMode(CORNER);
  translate(width / 2, height / 2);
  rotate(radians(-frameCount) + angleOffset); 
  noStroke();
  fill (color(random(255), random(255), random(255)));
  //fill(rect2Color); 
  rect(50,50, rect2Width, rect2Height); 
  pop();
  
  
  // 3r 
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect3Color); 
  rect(100, 100, rect3Width, rect3Height); 
  pop();
  
  // 4t
  push();
  translate(width / 2, height / 2);
  rotate(radians(-frameCount/2) + angleOffset); 
  fill(rect4Color); 
  rect(200, 200, rect4Width, rect4Height); 
  pop();
  
  // 5e
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect5Color);  
  rect(250, 250, rect5Width, rect5Height); 
  pop();
  
  
  // 6e
  push();
  //stroke (color(random(255), random(255), random(255)));  no m'agrada
  translate(width / 2, height / 2);
  rotate(radians(-frameCount) + angleOffset); 
  fill(rect6Color); 
  //fill (color(random(255), random(255), random(255)));  //no m'agrada
  rect(300,300, rect6Width, rect6Height); 
  pop();
}
