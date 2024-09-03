float angleOffset;
float rect1Width, rect1Height, rect2Width, rect2Height;
float rect3Width, rect3Height, rect4Width, rect4Height; 
float rect5Width, rect5Height, rect6Width, rect6Height; 

// Declarar correctamente los colores
color rect1Color, rect2Color, rect3Color, rect4Color, rect5Color, rect6Color;


void setup() {
  size(1080, 1080);
  background(color(random(255), random(255), random(255)));
  
  // Generar valores aleatorios para cada ejecución
  angleOffset = random(TWO_PI);  
  rect1Width = random(30, 80);   
  rect1Height = random(10, 500); 
  rect2Width = random(20, rect1Width - 10); 
  rect2Height = random(300, 400); 
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
  //rectMode(CENTER);
  
  

  // Dibujo de los primeros dos rectángulos
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 

  fill(rect1Color); 
  rect(0,0, rect1Width, rect1Height); 
  pop();
  
   push();
   rectMode(CENTER);
  translate(width / 2, height / 2);
  rotate((-frameCount/2) + angleOffset); 
  noStroke();
  fill (color(random(255), random(255), random(255)));
  //fill(rect2Color); 
  rect(50,50, rect2Width, rect2Height); 
  pop();
  
  
  // Dibujo de los siguientes dos rectángulos
  push();
  //translate(width / 2, height / 2);
  rotate((frameCount) + angleOffset); 
  fill(rect3Color); 
  rect(100, 100, rect3Width, rect3Height); 
  pop();
  
   push();
   rectMode(CENTER);
  //translate(width / 2, height / 2);
  rotate(radians(-frameCount) + angleOffset); 
  fill(rect4Color); 
  rect(200, 200, rect4Width, rect4Height); 
  pop();
  
  // Dibujo de los últimos dos rectángulos
  push();
  translate(540, 540);
  rotate((frameCount)); 
  noStroke();
  //fill(rect5Color);
  fill (color(random(255), random(255), random(255)));
  rect(250, 250, rect5Width, rect5Height); 
  pop();
  
   push();
   rectMode(CENTER);
  //stroke (color(random(255), random(255), random(255)));  no m'agrada
  translate(200, 200);
  rotate(radians(-frameCount)); 
   fill(rect6Color); 
  //fill (color(random(255), random(255), random(255)));  no m'agrada
  rect(300,300, rect6Width, rect6Height); 
  pop();
}
