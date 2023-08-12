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
  //Funcion para crear la figura
  figura();
  // la imagen posicionada
  image(img, 400, -1, 400, 400);
}

void mousePressed() {
  rotationStarted = true; // activa la rotación 
  clockwise = !clockwise; // cambia la dirección de la rotación
}
