PImage imagen1;
void setup() {
  size(800, 400);
  background(145, 150, 256);
  imagen1 = loadImage("fotomia2.jpg");
}
void draw() {
  image(imagen1, 400, 1, 400, 400);
  line(400, 0, 400, 400);
  strokeWeight(2);
  
  //forma de cara
  noStroke();
  fill(250, 219, 216);
  rect(135, 320, 100, 90);
  noStroke();
  fill(250, 219, 216);
  ellipse(185, 200, 230, 277);
  
  //ojo izquierdor
  stroke(0);
  fill(250, 250, 250);
  ellipse(135, 170, 40, 30);
  noStroke();
  fill(121, 85, 72);
  ellipse(135, 170, 25, 25);
  noStroke();
  fill(0);
  ellipse(135, 170, 20, 20);
  noStroke();
  fill(255, 255, 255);
  ellipse(135, 170, 5, 5);
  
  // ojo derecho
  stroke(0);
  fill(250, 250, 250);
  ellipse(230, 170, 40, 30);
  noStroke();
  fill(121, 85, 72);
  ellipse(230, 170, 25, 25);
  noStroke();
  fill(0);
  ellipse(230, 170, 20, 20);
  noStroke();
  fill(255, 255, 255);
  ellipse(230, 170, 5, 5);
  
  //nariz
  stroke(0);
  line(175, 200, 172, 230);
  line(172, 230, 160, 240);
  line(190, 200, 193, 230);
  line(193, 230, 205, 240);
  
  //boca
  fill(245, 183, 177);
  ellipse(185, 280, 70, 20);
  line(150, 280, 220, 280);
  
  //cejas
  strokeWeight(5);
  line(110, 135, 155, 135);
  line(110, 135, 105, 140);
  line(205,135,250,135);
  line(250,135,255,140);
  
  //oreja
  noStroke();
  fill(250, 219, 216);
  ellipse(80,205,40,50);
  ellipse(80,225,30,30);
  ellipse(289,205,40,50);
  ellipse(289,225,30,30);
  fill(127, 140, 141);
  ellipse(70,233,10,10);
  fill(255,255,255);
  ellipse(70,232,5,5);
 
  // pelo
  stroke(#554143);
  strokeWeight(13);
  line(110,80,120,115);
  line(105,80,123,110);
  line(100,80,130,115);
  line(90,77,140,120);
  line(90,77,120,120);
  line(90,90,90,120);
  line(95,80,96,122);
  line(120,75,150,124);
  line(125,77,180,123);
  line(130,73,190,120);
  line(140,70,210,122);
  line(155,69,220,124);
  line(166,62,240,120);
  line(200,66,210,120);
  line(180,65,220,115);  
  line(195,65,222,120);
  line(90,75,200,80);
  line(170,70,100,75);
  line(250,76,200,120);
  line(215,67,270,126);
  line(210,63,240,120);
  line(160,60,100,122);
  line(190,58,250,80);
  line(200,60,270,100);
  line(240,80,180,90);
  line(230,65,280,120);
  line(110,70,260,90);
  line(220,90,140,94);
}
