float angleOffset;
float rect1Width, rect1Height, rect2Width, rect2Height;
float rect3Width, rect3Height, rect4Width, rect4Height; 
float rect5Width, rect5Height, rect6Width, rect6Height; 

// Declarar correctamente los colores
color rect1Color, rect2Color, rect3Color, rect4Color, rect5Color, rect6Color;

int numRects = 8; // Total de rectángulos a dibujar
int currentRect = 0; // Índice del rectángulo actual
float interval = 1000; // Intervalo de tiempo en milisegundos para dibujar el siguiente rectángulo
float lastUpdateTime = 10; // Tiempo en el que se actualizó por última vez


void setup() {
  size(500, 500);
  background(color(random(255), random(255), random(255)));
  
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
  rect5Width = random(30, 80);   
  rect5Height = random(300, 500); 
  rect6Width = random(20, 80);  
  rect6Height = random(40, 90);

  // Inicializar los colores
  rect1Color = color(random(255), random(255), random(255)); 
  rect2Color = color(random(255), random(255), random(255));  
  rect3Color = color(random(255), random(255), random(255)); 
  rect4Color = color(random(255), random(255), random(255));  
  rect5Color = color(random(255), random(255), random(255));  
  rect6Color = color(random(255), random(255), random(255));  
}

void draw() {
  stroke (color(random(255), random(255), random(255)));
  rectMode(CENTER);
  
  

  // Dibujo de los primeros dos rectángulos
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect1Color); 
  rect(0, 0, rect1Width, rect1Height); 
  fill(rect2Color); 
  rect(0, 0, rect2Width, rect2Height); 
  pop();
  
  // Dibujo de los siguientes dos rectángulos
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect3Color); 
  rect(0, 0, rect3Width, rect3Height); 
  fill(rect4Color); 
  rect(0, 0, rect4Width, rect4Height); 
  pop();
  
  // Dibujo de los últimos dos rectángulos
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount) + angleOffset); 
  fill(rect5Color);  // Se corrigió el color para rect5
  rect(0, 0, rect5Width, rect5Height); 
  fill(rect6Color);  // Se corrigió el color para rect6
  rect(0, 0, rect6Width, rect6Height); 
  pop();
}
