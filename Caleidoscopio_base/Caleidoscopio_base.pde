// Esto es un caleidoscopio basio para aprender usar Processing

private int _widthSetup = 800;
private int _heightSetup = 600;

private color colorBackground = color(255, 255, 255);
private int strokeSize = 5;

private color colorFirstStoke = color(255, 0, 0);
private color colorSecondStoke = color(255, 0, 0);
private color colorThirdStoke = color(255, 0, 0);
private color colorFourStoke = color(255, 0, 0);


void setup() { // incicializa cosas, se llama una vez (funcion start)
  //Crea una ventana width y height
  size( _widthSetup, _heightSetup);
  //color de fondo RGB
  background(colorBackground);
}

void draw() { // Funcion loop principal, se ejecuta inf veces (update)
  // Decidir el color de puntos
  
  strokeWeight(strokeSize); //Augmenta el tamaño del stroke
  
  /*if(mousePressed){ // si algun boton del mouse esta presionado
    //Pintar un punto donde este el "Mouse"
    point(mouseX, mouseY);//Pintar un punto
    
    //pintar el resto de puntos
    point( width - mouseX, mouseY); //arriba derecha
    point(mouseX, height - mouseY); //abajo izquierda
    point( width - mouseX, height - mouseY); // abajo derecha
  }*/
}


void mousePressed(){
  //Pintar un punto donde este el "Mouse"
    stroke(colorFirstStoke);//color del stroke 
    point(mouseX, mouseY);//Pintar un punto
    
    //pintar el resto de puntos
    point( width - mouseX, mouseY); //arriba derecha
    stroke(colorSecondStoke);
    point(mouseX, height - mouseY); //abajo izquierda
    stroke(colorThirdStoke);
    point( width - mouseX, height - mouseY); // abajo derecha
    stroke(colorFourStoke);
}
