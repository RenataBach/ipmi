//2da pestaña

void dibujarRombos() {
  int startX = 400 + (width - 400 - (columnas * (tamOriginal + espacio)) + espacio) / 2;
  int startY = (height - (filas * (tamOriginal + espacio)) + espacio) / 2; // Centro vertical de los rombos

  // Dibujar los rombos
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      int x = startX + j * (tamOriginal + espacio) + tamOriginal / 2;
      int y = startY + i * (tamOriginal + espacio) + tamOriginal / 2;

      // tamaño actual del rombo
      int tam = tamOriginal + incrementoTamanio * numIncrementos;

      // color del rombo
      if (i == 0 || i == 4) {
        fill(0); 
      } else if (i == 2) {
        fill(0); 
      } else if (i == 1 || i == 3) {
        fill(255); 
      }

      //  si el mouse está sobre el rombo actual hay sombras activas
      if (sombrasActivas && mouseX > x - tam / 2 && mouseX < x + tam / 2 &&
          mouseY > y - tam / 2 && mouseY < y + tam / 2) {
        // color de sombra aleatorio
        int sombraR = int(random(250)); // Componente rojo de la sombra
        int sombraG = int(random(0)); // Componente verde de la sombra (0 para evitar verde)
        int sombraB = int(random(255)); // Componente azul de la sombra
        fill(color(sombraR, sombraG, sombraB));
      }

      // Dibujo rombo
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
  // Reiniciar variables específicas
  mouseX = 0;
  mouseY = 0;
  sombrasActivas = false; // Desactivar sombras
  numIncrementos = 0; // Restablecer contador de incrementos/decrementos
}
