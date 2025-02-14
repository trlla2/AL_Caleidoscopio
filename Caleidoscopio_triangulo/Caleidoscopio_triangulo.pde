// Esto es un caleidoscopio basio para aprender usar Processing

private int _widthSetup = 800;
private int _heightSetup = 600;

private color colorBackground = color(255, 255, 255);
private int strokeSize = 5;

private color colorFirstStoke = color(255, 0, 0);
private color colorSecondStoke = color(0, 255, 0);
private color colorThirdStoke = color(0, 0, 255);
private color colorFourStoke = color(255, 0, 255);

private int x1,y1,x2,y2,x3,y3; //Tres puntos para hacer el triangulo
private int triangleCounter = 0; //Contador para hacer el triangulo


void setup() { // incicializa cosas, se llama una vez (funcion start)
  //Crea una ventana width y height
  size( _widthSetup, _heightSetup);
  //color de fondo RGB
  background(colorBackground);
}

void draw() { // Funcion loop principal, se ejecuta inf veces (update)
 
}


void mousePressed(){
  
    strokeWeight(strokeSize); //Cambia el tamaño del stroke
    
    if(triangleCounter == 0){ //primer click
      //Guardarse la posicion del primer punto
      x1 = mouseX;
      y1 = mouseY;
    
      //point 1 
      stroke(colorFirstStoke);
      point(mouseX, mouseY);
      //point 2
      stroke(colorSecondStoke);
      point( width - mouseX, mouseY); 
      //point 3
      stroke(colorThirdStoke);
      point(mouseX, height - mouseY); 
      //point 4
      stroke(colorFourStoke);
      point( width - mouseX, height - mouseY);
    
      triangleCounter ++;
      
    } else if (triangleCounter == 1){ //segundo click
      //Guardarse la posicion del segundo punto
      x2 = mouseX;
      y2 = mouseY;
    
      //point 1 
      stroke(colorFirstStoke);
      point(mouseX, mouseY);
      //point 2
      stroke(colorSecondStoke);
      point( width - mouseX, mouseY); 
      //point 3
      stroke(colorThirdStoke);
      point(mouseX, height - mouseY); 
      //point 4
      stroke(colorFourStoke);
      point( width - mouseX, height - mouseY);
    
      triangleCounter ++;
    } else if (triangleCounter == 2){ //tercer click
      //Guardarse la posicion del primer punto
      x3 = mouseX;
      y3 = mouseY;
      
      //primer triangulo
      stroke(colorFirstStoke);
      fill(colorFirstStoke); //color background triangulo
      triangle(x1,y1,x2,y2,x3,y3);//pintar tirangulo
      //segundo triangulo
      stroke(colorSecondStoke);
      fill(colorSecondStoke);
      triangle(width - x1,y1,width - x2,y2,width - x3,y3);
      //tercer triangulo
      stroke(colorThirdStoke);
      fill(colorThirdStoke); 
      triangle(x1,height - y1,x2,height - y2,x3,height - y3);
      //quarto triangulo
      stroke(colorFourStoke);
      fill(colorFourStoke);
      triangle(width - x1,height - y1,width - x2,height - y2,width - x3,height - y3);
      
      
      
      //Reiniciar triangulo
      triangleCounter = 0; 
    }
    
}
