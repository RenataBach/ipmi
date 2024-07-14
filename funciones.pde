//pestaña2: funciones

void dibujarRombos(int filas, int columnas, int tamOriginal, int espacio, boolean sombrasActivas) { 
  // Calculo la posición inicial para centrar los rombos
  int startX = 400 + (width - 400 - (columnas * (tamOriginal + espacio)) + espacio) / 2;
  int startY = (height - (filas * (tamOriginal + espacio)) + espacio) / 2; // Centro vertical de los rombos

  // Dibujar los rombos
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      int x = startX + j * (tamOriginal + espacio) + tamOriginal / 2;
      int y = startY + i * (tamOriginal + espacio) + tamOriginal / 2;

      // Obtener el tamaño actual del rombo
      int tam = obtenerTamanoActual(tamOriginal, incrementoTamanio, numIncrementos); 

      // Determinar el color del rombo
      if (i == 0 || i == 4) {
        
        fill(0); 
      } else if (i == 2) {
        fill(0); 
      } else if (i == 1 || i == 3) {
        fill(255); 
      }

      // Verifico si el mouse está sobre el rombo actual, sombras activas
      if (sombrasActivas && mouseX > x - tam / 2 && mouseX < x + tam / 2 &&
          mouseY > y - tam / 2 && mouseY < y + tam / 2) {
        // Generar un color de sombra aleatorio
        color sombra = generarColorSombra(); 
        fill(sombra);
      }

      // Dibujar rombo
      dibujarRombo(x, y, tam);
    }
  }
}

void dibujarRombo(int x, int y, int tam) {
  quad(x, y - tam / 2,
       x + tam / 2, y,
       x, y + tam / 2,
       x - tam / 2, y);
}
void resetearVariables() {
  mouseX = 0;
  mouseY = 0;
  sombrasActivas = false; // Desactivar sombras
  numIncrementos = 0; // contador de incrementos/decrementos
}
int obtenerTamanoActual(int tamOriginal, int incrementoTamanio, int numIncrementos) { // Cambiado
  return tamOriginal + incrementoTamanio * numIncrementos;
}

color generarColorSombra() { 
  int sombraR = int(random(250)); 
  int sombraG = 0; 
  int sombraB = int(random(255)); 
  return color(sombraR, sombraG, sombraB);
}
