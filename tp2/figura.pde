void figura(){
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
  }}
