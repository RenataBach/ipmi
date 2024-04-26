// Bach Renata Comision 2
PImage playa;
void setup() {
  size (800, 400) ;
  playa=loadImage ("playa.jpg");
}
void draw () {
  background (205, 235, 242);
  //naranja
  fill (62, 34, 6);
  noStroke();
  rect (650, 305, 200, 500);
  fill ( 234, 131, 26);
  noStroke();
  rect (300, 0, 500, 88);
  //sol
  fill (229, 255, 85);
  stroke (234, 131, 26);
  circle (533, 84, 25);
  //mar
  fill (77, 102, 162);
  noStroke();
  rect (100, 88, 800, 400);
  //arena clara
  fill (250, 205, 106);
  noStroke();
  rect (400, 330, 600, 25);
  //arenaoscura
  fill (124, 98, 77);
  noStroke();
  rect (400, 350, 500, 100);
  fill (165, 136, 82);
  noStroke ();
  ellipse (550, 370, 115, 1);
  ellipse (550, 390, 86, 1);
  ellipse (450, 395, 80, 3);
  ellipse (440, 380, 60, 2);
  //fogata2
  fill (62, 34, 6) ;
  rect (630, 100, 20, 400);
  fill (62, 34, 6);
  noStroke();
  circle (690, 300, 100);
  fill (62, 34, 6);
  noStroke();
  circle (690, 365, 100);
  fill (62, 34, 6);
  noStroke();
  circle (780, 320, 100);
  fill (62, 34, 6);
  noStroke();
  circle (780, 370, 100);
  fill (62, 34, 6);
  noStroke();
  rect (650, 305, 200, 500);
  //rama
  fill (62, 34, 6);
  noStroke();
  rect (650, 211, 10, 400);
  //tronco princ
  fill (62, 34, 6) ;
  rect (624, 100, 30, 450);
  triangle (639, 75, 624, 107, 652, 110);
  //tronco costado
  fill (62, 34, 6);
  triangle (629, 393, 624, 355, 478, 327);
  //circulo costado
  fill (77, 102, 162);
  noStroke();
  circle (620, 150, 20);
  //nubes
  stroke (242, 205, 68);
  fill (232, 175, 28);
  bezier (130, 50, 130, 10, 550, 50, 600, 30);
  fill (242, 236, 56, 140);
  noStroke();
  ellipse (535, 70, 45, 7);
  stroke (250, 232, 250);
  fill (232, 175, 28);
  bezier (110, 50, 190, 10, 400, 50, 670, 20);
  fill (245, 191, 82);
  stroke (250, 232, 250);
  bezier (110, 50, 320, 10, 100, 50, 670, 20);
  //fuego
  fill (250, 178, 20, 100);
  noStroke ();
  ellipse (720, 350, 115, 150);
  // olas
  fill (167, 208, 247, 100);
  stroke (101, 144, 185);
  ellipse (550, 320, 95, 5);
  ellipse (520, 270, 75, 3);
  ellipse (470, 200, 115, 3);
  ellipse (740, 180, 135, 2);
  ellipse (450, 100, 168, 1);
  ellipse (550, 150, 156, 2);

  image (playa, 0, 0, 400, 400);
}
