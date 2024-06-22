int filas = 5;
int columnas = 4;
int tamOriginal = 100; // Tamaño original del rombo
int espacio = 2;
PImage rombo;
boolean sombrasActivas = false; // Variable para controlar la activación de sombras
int incrementoTamanio = 10; // Incremento de tamaño al presionar '+' o '-'
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
  dibujarRombos();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    // Llamar a la función para resetear variables
    resetearVariables();
  } else if (key == '+') {
    // Aumento el tam del rombo hasta 5
    if (numIncrementos < 5) {
      numIncrementos++;
    }
  } else if (key == '-') {
    // Achico el tam del rombo hasta 5 
    if (numIncrementos > -5) {
      numIncrementos--;
    }
  } else if (key == 'j' || key == 'J') {
    // Activar sombras al presionar 'J'
    sombrasActivas = true;
  }
}
