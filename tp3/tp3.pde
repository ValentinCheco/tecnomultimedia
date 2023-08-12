PImage[] imagenes = new PImage[10];
String pantalla;
String[] textos = new String[25];

void setup() {
  size(600, 600);
  for (int i = 0; i<10; i++) {
    imagenes[i] = loadImage("imagen_"+nf(i, 3)+".jpg");
    pantalla = "inicio";
  }

  historia();
}

void draw() {
  if (pantalla.equals("inicio")) {
    image(imagenes[0], 0, 0, width, height);
    boton(210, 50, 150, 50);
    pushStyle();
    textSize(15);
    fill(0);
    text(textos[21], 260, 40);
    popStyle();
  } else if (pantalla.equals("chancho")) {
    chancho();
  } else if (pantalla.equals("lobo")) {
    lobo();
  } else if (pantalla.equals("caminos")) {
    caminos();
  } else if (pantalla.equals("finalmalo")) {
    finalmalo();
  } else if (pantalla.equals("finalbueno")) {
    finalbueno();
  } else if (pantalla.equals("ultcasa")) {
    ultcasa();
  } else if (pantalla.equals("fin")) {
    fin();
  } else if (pantalla.equals("cazados")) {
    cazados();
  }
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 180, 50, 150, 50) && pantalla.equals("inicio")) { // inicio
    pantalla = "chancho";
  } else if (botonPressed(mouseX, mouseY, 150, 150, 190, 50) && pantalla.equals("chancho")) { // inicio=huevo
    pantalla = "lobo";
  } else if (botonPressed(mouseX, mouseY, 350, 90, 190, 50) && pantalla.equals("lobo")) { // inicio=llave
    pantalla = "caminos";
  } else if (botonPressed(mouseX, mouseY, 10, 230, 150, 50) && pantalla.equals("caminos")) { //llave mesa de luz
    pantalla = "finalmalo";
  } else if (botonPressed(mouseX, mouseY, 210, 50, 150, 50) && pantalla.equals("finalmalo")) { //mesa de luz=dormitorio
    pantalla = "inicio";
  } else if (botonPressed(mouseX, mouseY, 20, 490, 150, 50) && pantalla.equals("finalbueno")) {//dormitorio=casa
    pantalla = "ultcasa";
    } else if (botonPressed(mouseX, mouseY, 20, 276, 150, 50) && pantalla.equals("finalbueno")) {//dormitorio=casa
    pantalla = "finalmalo";
  } else if (botonPressed(mouseX, mouseY, 185, 120, 150, 50) && pantalla.equals("ultcasa")) { //casa=detiene
    pantalla = "fin";
    } else if (botonPressed(mouseX, mouseY, 185,300,150,50) && pantalla.equals("ultcasa")) { //casa=detiene
    pantalla = "cazados";
    } else if (botonPressed(mouseX, mouseY, 90, 90, 150, 50) && pantalla.equals("cazados")) { //casa=detiene
    pantalla = "inicio";
  } else if (botonPressed(mouseX, mouseY,260, 220, 150, 50) && pantalla.equals("fin")) { //fin=comienzo
    pantalla = "inicio";
  } else if (botonPressed(mouseX, mouseY, 10, 410, 150, 50) && pantalla.equals("caminos")) { //llave=sillon
    pantalla = "finalbueno";
  }
}

void boton(int px, int py, int ancho, int alto) {//crea boton
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(250, 0, 240);
  } else {
    fill(250, 0, 150);
  }
  rect(px, py, ancho, alto, alto/4);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}
