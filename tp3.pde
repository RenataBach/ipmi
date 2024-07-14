//https://youtu.be/VYE5KMVAszU
//Renata Bach Comision 2 Imagen nro 47
//1er pestaña 

int filas = 5;
int columnas = 4;
int tamOriginal = 100; 
int espacio = 2;
PImage rombo;
boolean sombrasActivas = false; // Variable para controlar la activación de sombras
int incrementoTamanio = 10; // Itamaño al presionar '+' o '-'
int numIncrementos = 0; // Contador de incrementos/decrementos

void setup() {
  size(800, 400); 
  frameRate(30);
  rombo = loadImage("rombo.jpg");
}

void draw() {
  background(67);
  image(rombo, 0, 0, 400, 400); 
  noStroke();
  dibujarRombos(filas,columnas,tamOriginal,espacio,sombrasActivas);
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetearVariables();
    // Llamar a la función para resetear variables
    resetearVariables();
  } else if (key == '+') {
    // Incrementar tamaño del rombo (hasta un máximo de 5 incrementos)
    if (numIncrementos < 5) {
      numIncrementos++;
    }
  } else if (key == '-') {
    // Aumento del tam del rombo hasta 5
    if (numIncrementos > -5) {
      numIncrementos--;
    }
  } else if (key == 'j' || key == 'J') {
    // Activar sombras al presionar 'J'
    sombrasActivas = true;
  }
}
   
