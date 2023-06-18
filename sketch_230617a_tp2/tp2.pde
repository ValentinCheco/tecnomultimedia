int numCircles = 15; // número de círculos
float[] circleSizes = new float[numCircles]; // arreglo para almacenar los tamaños de los círculos
PImage img;
boolean rotationStarted = false; //  si empezo la rotacion
boolean clockwise = true; // controla la rotacion

void setup() {
  size(800, 400);
  img = loadImage("ilusion.jpg");
  smooth(); // suaviza los bordes de los círculos
  noFill(); // sin relleno en los círculos
  stroke(255);

  // inicializa los tamaños de los círculos
  for (int i = 0; i < numCircles; i++) {
    circleSizes[i] = 10 + i * 15;
  }
}

void draw() {
  background(0); // fondo negro

  // calcula la posición 
  float centerX = width / 4;
  float centerY = height / 2;

  // dibuja los círculos
  for (int i = 0; i < numCircles; i++) {
    float circleSize = circleSizes[i];
    float angle = TWO_PI / numCircles * i; // ángulo de posición
    float offset = sin(frameCount * 0.05 + angle) * 100; // cálculo del desplazamiento

    // cambia el angulo segun la posicion
    if (rotationStarted) {
      float rotationSpeed = radians(frameCount * 0.5);
      if (clockwise) {
        angle += rotationSpeed;
      } else {
        angle -= rotationSpeed;
      }
    }

    // calcula la posición del círculo en la mitad izquierda
    float x = centerX + cos(angle) * offset;
    float y = centerY + sin(angle) * offset;

    // dibuja el círculo
    ellipse(x, y, circleSize, circleSize);
  }
  // la imagen posicionada
  image(img, 400, -1, 400, 400);
}

void mousePressed() {
  rotationStarted = true; // activa la rotación 
  clockwise = !clockwise; // cambia la dirección de la rotación
}
