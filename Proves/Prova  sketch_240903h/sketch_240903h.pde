float angleOffset;
float rect1Width, rect1Height, rect2Width, rect2Height;
float rect3Width, rect3Height, rect4Width, rect4Height;
color rect1Color, rect2Color, rect3Color, rect4Color;

int numRects = 4; // Total de rectángulos a dibujar
int currentRect = 0; // Índice del rectángulo actual
float interval = 2000; // Intervalo de tiempo en milisegundos para dibujar el siguiente rectángulo
float lastUpdateTime = 10; // Tiempo en el que se actualizó por última vez

void setup() {
  size(500, 500);
   background (color(random(255), random(255), random(255)));

  
  // Generar valores aleatorios para cada ejecución
  angleOffset = random(TWO_PI);
  rect1Width = random(30, 80);
  rect1Height = random(100, 500);
  rect2Width = random(10, rect1Width - 10);
  rect2Height = random(30, 500);
  rect3Width = random(20, 800);
  rect3Height = random(40, 90);
  rect4Width = random(20, 60);
  rect4Height = random(200, 800);
  
  rect1Color = color(random(255), random(255), random(255));
  rect2Color = color(random(255), random(255), random(255));
  rect3Color = color(random(255), random(255), random(255));
  rect4Color = color(random(255), random(255), random(255));
}

void draw() {

  
  float currentTime = millis();
  
  if (currentTime - lastUpdateTime > interval) {
    lastUpdateTime = currentTime;
    currentRect++;
    
    // Asegúrate de que el índice de rectángulo esté dentro del rango
    if (currentRect >= numRects) {
      currentRect = 0;
    }
  }
  
  rectMode(CENTER);
  
  push();
  translate(width / 2, height / 2);
  rotate(radians(frameCount/2) + angleOffset);
  
  // Dibujar los rectángulos en función del índice actual
  if (currentRect == 0) {
    fill(rect1Color);
    rect(0, 0, rect1Width, rect1Height);
  } else if (currentRect == 1) {
    fill(rect2Color);
    rect(0, 0, rect2Width, rect2Height);
  } else if (currentRect == 2) {
    fill(rect3Color);
    rect(0, 0, rect3Width, rect3Height);
  } else if (currentRect == 3) {
    fill(rect4Color);
    rect(0, 0, rect4Width, rect4Height);
  }
  
  pop();
}
