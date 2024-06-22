
int filas=5;
int columnas =4; 
int tam=75; 
int espacio=10;
boolean crecimiento= true; 
float angulo = radians (45);
PImage rombo;


void setup (){ 
  size (800,400); 
   frameRate (30); 
  rombo = loadImage ("rombo.jpg");  
}
void draw (){ 
  background (67);
  image (rombo,0,0,400,405); 
  noStroke();
  dibujarRombos();
}

 void dibujarRombos(){
  for (int i=0; i< filas; i++){
    for (int j=0; j<columnas; j++){
      int x = 400+ j * (tam+ espacio); 
      int y = i * (tam+espacio); 
      
      //alterno colores 
      if ((i+j)%2==0){
          fill (255);
        } else {
          fill (0);
      }
    
      pushMatrix();
      translate (x + tam/2, y + tam/2);
      rotate (angulo);
      rectMode (CENTER); 
      rect (0,0,tam,tam);
      popMatrix();
    }
  }
      for (int i =0; i < filas -1 ; i++){
        for (int j =0; j <columnas -1; j++){
          int x =400+j * (tam+espacio)+(tam+espacio)/2;
          int y =i* (tam+espacio) + (tam + espacio)/2; 
     
        fill (128);
      pushMatrix ();
      translate (x+tam/2, y + tam /2); 
      rotate (angulo);
      rectMode (CENTER); 
      rect (0,0,tam,tam);
      popMatrix(); 
    }
  }
 }    
