void chancho () {
  image(imagenes[1], 0, 0, width, height);
  boton(190, 150, 150, 50);//next
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[1], 100, 40);//intro
  popStyle();
}
void lobo() {
  image(imagenes[6], 0, 0, width, height);
  boton(350, 90, 150, 50);//next
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[2], 110, 50);
  popStyle();
}
void caminos() {
  image(imagenes[3], 0, 0, width, height);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[3], 10, 225);//camino 1
  boton(10, 230, 150, 50);//camino 1
  fill(0);
  text(textos[4], 10, 370);//camino2
  boton(10, 410, 150, 50);//camino 2
}
void finalmalo() {
  image(imagenes[9], 0, 0, width, height);
  boton(210, 50, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[12], 257, 40);
  popStyle();
}
void finalbueno() {
  image(imagenes[5], 0, 0, width, height);
  boton(20, 276, 150, 50);
  boton(20, 490, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[5], 96, 80);
  text(textos[6], 20, 250);
    text(textos[7], 20, 410);
  popStyle();
}
void ultcasa() {
  image(imagenes[2], 0, 0, width, height); 
  boton(185, 120, 150, 50);
  boton(185,300,150,50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[13], 120, 100);
  text(textos[14], 120, 280);
  popStyle();
}
void cazados() {
  image(imagenes[8], 0, 0, width, height);  
  boton(90, 90, 150, 50);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[12], 130, 80); 
  popStyle();

}
void fin() {
  image(imagenes[7], 0, 0, width, height);
  pushStyle();
  textSize(15);
  fill(0);
  text(textos[15], 110, 90);
  text(textos[16],320,214);
  boton(260, 220, 150, 50);
}
