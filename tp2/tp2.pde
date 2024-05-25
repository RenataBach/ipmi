// declaro mis variables 
String uno; 
String estado;
color colores; 
float tamaño, tamaño2, tamaño3; 
float textoY=0.5;
float textY=0.5;
float imagenY= 480;
 float imagenX=640;
 float textX=0.8;
 float velocidadTexto=1; 
 boolean mostrarBoton= false; 
//boton
int esquinaX1=270;
int esquinaY1=400; 
int ancho=100; 
int alto=30; 
//fotos
PImage cartas; //pantalla1
PImage reglas1; //pantalla2
PImage jugada; //pantalla3
PFont letra; 



void setup(){ 
  size (640, 480); 
  background(0); 
  //iniciar variables
  letra= loadFont ("letra.vlw"); 
  textFont (letra,120); 
   textAlign (CENTER,CENTER); 
  cartas = loadImage ("cartas.jpg"); 
  reglas1= loadImage ("reglas1.jpg"); 
  jugada= loadImage ("jugada.jpg");
textX=0.8; 
textY=0.5; 
 textoY=0.5; 
  uno= "cartas"; 
  tamaño=14; 
  colores= color (200,50,0);
  
}
void draw (){ 
  background(0); 
  println(frameCount/60); 
//pantalla1
if (frameCount/60>=0){ 
  estado = "pantalla1"; 
}
if (estado.equals("pantalla1")){ 
  image (cartas,0,0); 
  if (tamaño<30){
    tamaño = 0.08; 
    textSize  (18); 
    fill (255); 
    text ("UNO\n \n ¿Que es?\n\n El Uno es uno de los juegos de mesa\n con cartas mas divertidos, \n es muy popular en todo el mundo y \n permite competir con diferentes jugadores. ", 320,textoY); 
  }
    if (textoY<=90){
      textoY+=0.5;
  } 
}
 //pantalla2
  if (frameCount/60>=5){
    estado= "pantalla2"; 
  }
 if (estado.equals("pantalla2")){
   image (reglas1,0,0);  
   textSize (18); 
   if (tamaño<30){
     tamaño=0.08; 
   text ("REGLAS:\n\n\n -Reparto de 7 cartas a cada jugador\n\n-Los jugadores colocan cartas del mismo color o numero\n\n-Si no pueden,toman una carta nueva\n\n -Gritar UNO! con una carta restante es crucial para ganar\n\n -Si lo olvidas, deberas agarrar otra carta",textX,110); 
 } 
 if (textX<320){
   textX+=0.8; 
 }
 }
 //pantalla3
 if (frameCount/60>=15){
   estado = "pantalla3"; 
   tamaño=9; 
 }
 if (estado.equals("pantalla3")){ 
   image (jugada,0,0); 
   fill (0); 
   if (frameCount/60>=20){
   rect (esquinaX1, esquinaY1,ancho,alto); 
    fill(255); 
   textSize (11);
   text ("VER DE NUEVO",321,416); 
   }
   if (tamaño<30){
     textSize (18);
       fill(255);  
      text ("OBJETIVO:\n\n\n Ser el primero en quedarse sin cartas\n\n Quien primero logre el objetivo,\n\n es el ganador del juego!!",320,textY); 
   }
      if (textY<=90){ 
      textY+=0.5;
      }
 }
}
 void mousePressed () {
    if (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) { 
      tamaño=14; 
      textoY=0; 
      textX=0;
      textY=0; 
      frameCount=0; 
    }
 }
   
