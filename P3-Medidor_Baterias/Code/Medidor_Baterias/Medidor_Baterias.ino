/*-------------------------------------------------------------------------------
  Practica numero 03 - Medidor de baterias ()
  Desc: Implementando un Display LCD de 16x2 y una placa de desarrollo Arduino 
  nano, se deberá realizar un sistema con la capacidad de medir baterías AA y 
  AAA, dotando información de estas y en base a ciertos parámetros de voltaje, 
  dar un veredicto sobre su estado.
---------------------------------------------------------------------------------
  By using a 16x2 LCD display and an Arduino Nano development board, a system 
  should be implemented with the capability to measure AA and AAA batteries, 
  providing information about them, and based on certain voltage parameters, 
  give a verdict on their condition.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

float Volt = 0;

#include <LiquidCrystal.h>

LiquidCrystal LCD(7, 6, 5, 4, 3, 2);

//definicion de Ilustraciones

//Estado perfecto

//frame 1
byte letra1[8] = { B00000, B00000, B00011, B00101, B00110, B11101, B10110, B10101 };    
byte letra2[8] = { B00000, B00000, B11111, B01010, B10101, B01010, B10101, B01010 };
byte letra3[8] = { B00000, B00000, B11110, B10101, B01011, B10101, B01011, B10101 };    
byte letra4[8] = { B10110, B10101, B11110, B00101, B00110, B00011, B00000, B00000 };    
byte letra5[8] = { B10101, B01010, B10101, B01010, B10101, B11111, B00000, B00000 };        
byte letra6[8] = { B01011, B10101, B01011, B10101, B01011, B11110, B00000, B00000 };    
//Frame 2   
byte letra7[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };    
byte letra8[8] = { B00000, B00000, B11111, B00000, B00111, B00100, B01000, B11101 };    
byte letra9[8] = { B00000, B00000, B11110, B00001, B11001, B01001, B10001, B11001 };    
byte letra10[8] = { B10100, B10100, B11100, B00100, B00100, B00011, B00000, B00000 };   
byte letra11[8] = { B00100, B00101, B00110, B00100, B00000, B11111, B00000, B00000 };   
byte letra12[8] = { B10001, B00001, B00001, B00001, B00001, B11110, B00000, B00000 };   
    
//Estado Bueno    
    
//frame1
byte letra13[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };   
byte letra14[8] = { B00000, B00000, B11111, B10101, B11010, B10101, B11010, B10101 };   
byte letra15[8] = { B00000, B00000, B11110, B01011, B10101, B01011, B10101, B01011 };   
byte letra16[8] = { B10100, B10100, B11100, B00100, B00100, B00011, B00000, B00000 };   
byte letra17[8] = { B11010, B10101, B11010, B10101, B11010, B11111, B00000, B00000 };   
byte letra18[8] = { B10101, B01011, B10101, B01011, B10101, B11110, B00000, B00000 };   
//frame 2    
byte letra19[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10101 };   
byte letra20[8] = { B00000, B00000, B11111, B00000, B00011, B00010, B11110, B01100 };   
byte letra21[8] = { B00000, B00000, B11110, B00001, B00001, B10001, B11101, B00101 };   
byte letra22[8] = { B10101, B10101, B11101, B00100, B00100, B00011, B00000, B00000 };   
byte letra23[8] = { B00100, B00100, B00100, B11111, B00000, B11111, B00000, B00000 };   
byte letra24[8] = { B01101, B00101, B01101, B11101, B00001, B11110, B00000, B00000 };   
    
//Estado Regular

//frame 1   
byte letra25[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };   
byte letra26[8] = { B00000, B00000, B11111, B00010, B00011, B00010, B00011, B00010 };   
byte letra27[8] = { B00000, B00000, B11110, B10101, B01011, B10101, B01011, B10101 };   
byte letra28[8] = { B10100, B10100, B11100, B00100, B00100, B00011, B00000, B00000 };   
byte letra29[8] = { B00011, B00010, B00011, B00010, B00011, B11111, B00000, B00000 };   
byte letra30[8] = { B01011, B10101, B01011, B10101, B01011, B11110, B00000, B00000 };   
//frame 2 
byte letra31[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };   
byte letra32[8] = { B00000, B00000, B11111, B00000, B00110, B00110, B11111, B11111 };   
byte letra33[8] = { B00000, B00000, B11110, B00001, B00001, B00001, B10001, B10001 };   
byte letra34[8] = { B10100, B10100, B11100, B00100, B00100, B00011, B00000, B00000 };   
byte letra35[8] = { B00110, B00110, B00000, B11111, B00000, B11111, B00000, B00000 };   
byte letra36[8] = { B00001, B00001, B00001, B10001, B00001, B11110, B00000, B00000 };   
    

    
//Estado sin conexion   
    
byte letra49[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };   
byte letra50[8] = { B00000, B00000, B11111, B00001, B00011, B00111, B01111, B01111 };   
byte letra51[8] = { B00100, B01110, B11111, B11111, B11111, B11101, B11001, B10001 };   //Estado Malo   
    
//Frame 1   
byte letra37[8] = { B00000, B00000, B00011, B00100, B00100, B11100, B10100, B10100 };   
byte letra38[8] = { B00000, B00000, B11111, B00000, B00000, B00000, B00000, B00000 };   
byte letra39[8] = { B00000, B00000, B11110, B01011, B01101, B01011, B01101, B01011 };   
byte letra40[8] = { B10100, B10100, B11100, B00100, B00100, B00011, B00000, B00000 };   
byte letra41[8] = { B00000, B00000, B00000, B00000, B00000, B11111, B00000, B00000 };   
byte letra42[8] = { B01101, B01011, B01101, B01011, B01101, B11110, B00000, B00000 };   
//Frame 2   
byte letra43[8] = { B00000, B00000, B00011, B00100, B00100, B11101, B10110, B10110 };   
byte letra44[8] = { B00000, B00000, B11111, B01111, B10000, B00101, B00101, B00000 };   
byte letra45[8] = { B00000, B00000, B11110, B10001, B01001, B00101, B00011, B00011 };   
byte letra46[8] = { B10110, B10110, B11101, B00100, B00100, B00011, B00000, B00000 };   
byte letra47[8] = { B00000, B00111, B01000, B10000, B01111, B11111, B00000, B00000 };   
byte letra48[8] = { B00011, B00011, B10101, B01001, B10001, B11110, B00000, B00000 };   
byte letra52[8] = { B10100, B10101, B11111, B00111, B01111, B01111, B00111, B00010 };   
byte letra53[8] = { B11111, B11111, B11110, B11100, B11000, B11111, B00000, B00000 };   
byte letra54[8] = { B00001, B00001, B00001, B00001, B00001, B11110, B00000, B00000 };   

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  //Iniciacion del LCD 16 * 2
  LCD.begin(16, 2);

  //Iniciando el programa
  
  LCD.setCursor(0,0);
  LCD.print("Arduino Provador");
  LCD.setCursor(0,1);
  LCD.print("de Baterias ");
  delay(1000);
  LCD.print(".");
  delay(1000);
  LCD.print(".");
  delay(1000);
  LCD.print(".");
  delay(1000);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  //limpiar
  LCD.clear();

  //Lectura Analogica

  Volt = analogRead(7) * (5.00/1023.00);
  
  //probando Pilas
  
  LCD.setCursor(0, 0);
  LCD.print("Est. Bateria ");
  LCD.setCursor(0,1);
  LCD.print("V=>");
  LCD.print(Volt);
  LCD.print(":");

  //Condicionales de para estado.

  //Perfecto
  if(Volt >= 1.40){
    LCD.print("Per.");
    Perfecto();
  }

  //Bueno
  else if (Volt >= 1.20 && Volt < 1.40){
    LCD.print("Bue.");
    Bueno();
  }

  //Regular
  else if (Volt >= 0.30 && Volt < 1.20){
    LCD.print("Rgl.");
    Regular();
  }

  //Malo
  else if (Volt >= 0.1 && Volt < 0.30){
    LCD.print("Malo");
    Malo();
  }

  //sin conexion
  else{
    LCD.print("O/I");
    SinCon();
  }

  //Final
  
  delay(20);
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

//Funcion Perfecto

void Perfecto (){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra1);
  LCD.createChar(2, letra2);
  LCD.createChar(3, letra3);
  LCD.createChar(4, letra4);
  LCD.createChar(5, letra5);
  LCD.createChar(6, letra6);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);

  //Creacion de Caracteres 2
  LCD.createChar(1, letra7);
  LCD.createChar(2, letra8);
  LCD.createChar(3, letra9);
  LCD.createChar(4, letra10);
  LCD.createChar(5, letra11);
  LCD.createChar(6, letra12);
  
  //Frame 2
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);
}

//funcion Bueno

void Bueno() {
  //Creacion de Caracteres 1
  LCD.createChar(1, letra13);
  LCD.createChar(2, letra14);
  LCD.createChar(3, letra15);
  LCD.createChar(4, letra16);
  LCD.createChar(5, letra17);
  LCD.createChar(6, letra18);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);

  //Creacion de Caracteres 2
  LCD.createChar(1, letra19);
  LCD.createChar(2, letra20);
  LCD.createChar(3, letra21);
  LCD.createChar(4, letra22);
  LCD.createChar(5, letra23);
  LCD.createChar(6, letra24);

  
  //Frame 2
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);
}

//Funcion Regular

void Regular(){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra25);
  LCD.createChar(2, letra26);
  LCD.createChar(3, letra27);
  LCD.createChar(4, letra28);
  LCD.createChar(5, letra29);
  LCD.createChar(6, letra30);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);

  //Creacion de Caracteres 1
  LCD.createChar(1, letra31);
  LCD.createChar(2, letra32);
  LCD.createChar(3, letra33);
  LCD.createChar(4, letra34);
  LCD.createChar(5, letra35);
  LCD.createChar(6, letra36);
  
  //Frame 2
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);
}

//Funcion Malo

void Malo(){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra37);
  LCD.createChar(2, letra38);
  LCD.createChar(3, letra39);
  LCD.createChar(4, letra40);
  LCD.createChar(5, letra41);
  LCD.createChar(6, letra42);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);

  //Creacion de Caracteres 1
  LCD.createChar(1, letra43);
  LCD.createChar(2, letra44);
  LCD.createChar(3, letra45);
  LCD.createChar(4, letra46);
  LCD.createChar(5, letra47);
  LCD.createChar(6, letra48);
  
  //Frame 2
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(500);
}

//Sin Conexion

void SinCon(){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra49);
  LCD.createChar(2, letra50);
  LCD.createChar(3, letra51);
  LCD.createChar(4, letra52);
  LCD.createChar(5, letra53);
  LCD.createChar(6, letra54);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);

  delay(120);
}

//-------------------------------------------------------------------------------
