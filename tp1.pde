/*
 Tp1
Checo Valentin
 */

//LETRA
PFont Letra;
float tTexto;
boolean boton = false;
int seg;
int y = 420;
int x = 450;
int w = 60;
int h = 20;

PImage dinosaurio1;

PImage dinosaurio2;

PImage dinosaurio3;

void setup() {
  size(640, 480);
  // cargar imagen y texto
  dinosaurio1 = loadImage("dinosaurio1.jpeg");

  dinosaurio2 = loadImage("dinosaurio2.jpeg");

  dinosaurio3 = loadImage("dinosaurio3.jpeg");

  frameRate(60);


 //texto y imagen
 
  textAlign( CENTER, CENTER );
  imageMode( CENTER ); 

}
void draw() {
  background(0);
  
  println(frameCount);
if (frameCount % 60 == 0);
  {
    seg ++;
    if (seg >5 && seg <= 350){
      background(0);
 
  //velocidad texto
  tTexto = tTexto + 0.7;

  //imagen 1
  image(dinosaurio1,320,240, 640, 480);
  fill(255);
  textSize(tTexto);
  text ( "Osedax", width/2, height/2 - tTexto/2 );
  text ( "Museo Maritimo de Bilbao", width/2, height/2+ tTexto/2 );


  //imagen 2
  }else if (seg >330 && seg <= 450){
     image(dinosaurio2,320,240, 640, 480);
     textSize(30);
      fill(255);
      text("Osedax es una instalacion interactiva, \n muestra el flujo constante de materia y energia \n entre los seres que forman parte de un ecosistema", 315, 90);
      
 
  // imagen 3
    }else if (seg >450){
     image(dinosaurio3,320,240, 640, 480);
      textSize(25);
      fill(255 );
      text("Direccion:BIOPUS \n (Emiliano Causa/Matias Romero Costas)\n Direccion y escenografia:\n David Bedoian", 250, 150);
    // boton
    if((mouseX > x) && (mouseX < x + w) && (mouseY > y) && (mouseY > y + h)) {
      boton = true; }
      else{
      boton = false;
    } 
      fill(255,0,55);
      rect(x,y,w,h);
      fill(255);
      textSize(17);
      text("reiniciar",480,427);
    }
    }
}
 void mousePressed (){
     if(boton = true) 
   {seg = 0;
   tTexto = 0;}
 }
