float angleOffset;
float rect1Width, rect1Height, rect2Width, rect2Height;
float rect3Width, rect3Height, rect4Width, rect4Height;  // Declarar las variables faltantes
color rect1Color, rect2Color, rect3Color, rect4Color;  // Declarar los colores adicionales


void setup() {
  size(500, 500);
  background (color(random(255), random(255), random(255)));
  // Generar valores aleatorios para cada ejecución
  angleOffset = random(TWO_PI);  
  rect1Width = random(30, 80);   
  rect1Height = random(300, 500); 
  rect2Width = random(10, rect1Width - 10); 
  rect2Height = random(300, 500); 
  rect3Width = random(20, 80);  
  rect3Height = random(40, 90);
  rect4Width = random(20, 60);   
  rect4Height = random(200, 800);  
  rect1Color = color(random(255), random(255), random(255)); 
  rect2Color = color(random(255), random(255), random(255));  
  rect3Color = color(random(255), random(255), random(255)); 
  rect4Color = color(random(255), random(255), random(255));  
}

void draw() {
  //stroke (color(random(255), random(255), random(255)));
 //stroke (color(255, random(255), random(255)));
  rectMode(CENTER);


  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect1Color); 
  rect(0, 0, rect1Width, rect1Height); 
  fill(rect2Color); 
  rect(0, 0, rect2Width, rect2Height); 
  pop();
  
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect3Color); 
  rect(0, 0, rect3Width, rect3Height); 
  fill(rect4Color); 
  rect(0, 0, rect4Width, rect4Height); 
  pop();
}
