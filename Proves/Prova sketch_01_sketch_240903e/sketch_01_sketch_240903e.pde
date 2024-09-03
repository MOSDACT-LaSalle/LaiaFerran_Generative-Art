ArrayList<Rectangulo> rectangulos = new ArrayList<Rectangulo>();  // Lista de rectángulos

void setup() {
  size(500, 500);
  frameRate(160);  // Ajustar la velocidad de los fotogramas

  // Crear un primer rectángulo inicial
  agregarRectangulo();
}

void draw() {
  background(0);  // Limpiar el fondo en cada cuadro
  noStroke();
  rectMode(CENTER);

  // Dibujar y rotar todos los rectángulos en la lista
  for (Rectangulo r : rectangulos) {
    r.dibujar();
  }

  // Agregar un nuevo rectángulo a intervalos aleatorios
  if (random(1) < 0.01) {  // Probabilidad de 1% de agregar un rectángulo cada fotograma
    agregarRectangulo();
  }
}

// Función para agregar un nuevo rectángulo
void agregarRectangulo() {
  float angleOffset = random(TWO_PI);  // Ángulo inicial aleatorio
  float width = random(20, 80);        // Ancho aleatorio
  float height = random(40, 300);      // Alto aleatorio
  float speed = random(0.5, 3);        // Velocidad de rotación aleatoria
  color c = color(random(255), random(255), random(255));  // Color aleatorio
  rectangulos.add(new Rectangulo(angleOffset, width, height, speed, c));  // Añadir a la lista
}

// Clase Rectangulo para manejar los datos y el comportamiento de cada rectángulo
class Rectangulo {
  float angleOffset;
  float rectWidth, rectHeight;
  float speed;  // Velocidad de rotación
  color col;
  float angle = 0;  // Ángulo inicial de rotación

  // Constructor
  Rectangulo(float angleOffset, float rectWidth, float rectHeight, float speed, color col) {
    this.angleOffset = angleOffset;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    this.speed = speed;
    this.col = col;
  }

  // Dibujar el rectángulo con rotación
  void dibujar() {
    push();
    translate(width / 2, height / 2);
    rotate(radians(angle) + angleOffset);  // Aplicar rotación con ángulo y velocidad únicos
    fill(col);
    rect(0, 0, rectWidth, rectHeight);
    pop();
    angle += speed;  // Incrementar el ángulo basado en la velocidad
  }
}
