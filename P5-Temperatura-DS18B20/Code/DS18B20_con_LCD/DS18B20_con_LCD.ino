/*-------------------------------------------------------------------------------
  Practica numero 04 - Medidor de Temperatura con DS18B20
  Desc: Implementando un Display LCD de 16x2 y una placa de desarrollo Arduino 
  nano, se deberá realizar un sistema con la capacidad de medir La temperatura, 
  dotando información de la temperatura ambiente, Dado las características del 
  sensor usado, este podrá exponerse a ambientes más “Duros”.
---------------------------------------------------------------------------------
  Implementing a 16x2 LCD display and an Arduino Nano development board, a 
  system should be created with the ability to measure temperature, providing 
  information about the ambient temperature. Given the characteristics of the 
  sensor used, it can be exposed to more 'harsh' environments

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Se importan las librerías que se utilizaran
#include <OneWire.h>
#include <DallasTemperature.h>
#include <LiquidCrystal.h>

// Se define la entrada de datos (DATA)
#define DatosSen 8

// Se establece el pin declarado como bus para la comunicación OneWire
OneWire ObjWire(DatosSen); 

// Se llama a la librería DallasTemperature
DallasTemperature sensor(&ObjWire); 

// Difinimos El LCD
LiquidCrystal LCD(7, 6, 5, 4, 3, 2);

// Se definen las variables
float Temperatura = 0;
int i = 0;

// pixel Art

// Congelacion

byte letra1[8] = { B00000, B00000, B00000, B01110, B00000, B00000, B00001, B00010 };    
byte letra2[8] = { B01110, B10001, B10001, B10001, B10001, B10001, B00000, B11111 };    
byte letra3[8] = { B00000, B00001, B00100, B01000, B01000, B00100, B10000, B01000 };    
byte letra4[8] = { B00010, B00010, B00011, B00010, B00010, B00010, B00001, B00000 };    
byte letra5[8] = { B11111, B11111, B00000, B11111, B11010, B10110, B10010, B10001 };    
byte letra6[8] = { B01000, B01000, B11000, B01000, B01000, B10000, B10000, B00000 };    
    
// Cero

byte letra7[8] = { B00000, B00100, B01010, B01010, B01010, B00100, B00001, B00010 };    
byte letra8[8] = { B01110, B10001, B10001, B10001, B10001, B10001, B00000, B11111 };    
byte letra9[8] = { B00000, B00001, B00100, B01000, B01000, B00100, B10000, B01000 };    
byte letra10[8] = { B00010, B00010, B00011, B00011, B00010, B00010, B00000, B00010 };   
byte letra11[8] = { B11111, B11111, B00000, B11111, B11010, B01010, B01000, B00000 };   
byte letra12[8] = { B01000, B01000, B11000, B11000, B10000, B10000, B00000, B10000 };   
    
// Frio   
    
byte letra13[8] = { B00000, B00000, B00000, B00000, B00000, B00000, B00001, B00010 };   
byte letra14[8] = { B01110, B10001, B10001, B10001, B10001, B10001, B01110, B11111 };   
byte letra15[8] = { B00000, B00000, B00000, B00000, B00000, B00000, B10000, B01000 };   
byte letra16[8] = { B00010, B00010, B00001, B00000, B00000, B00000, B00000, B00000 };   
byte letra17[8] = { B11111, B11111, B00000, B11111, B00000, B00000, B00000, B00000 };   
byte letra18[8] = { B01000, B01000, B10000, B00000, B00000, B00000, B00000, B00000 };   
    
// Ambiente

byte letra19[8] = { B00000, B00000, B00000, B00000, B00000, B00000, B00001, B00010 };   
byte letra20[8] = { B01110, B10001, B10001, B10001, B10101, B10101, B01110, B11111 };   
byte letra21[8] = { B00000, B00000, B00000, B00000, B00000, B00000, B10000, B01000 };   
byte letra22[8] = { B00010, B00010, B00001, B00000, B00000, B00000, B00000, B00000 };   
byte letra23[8] = { B11111, B11111, B00000, B11111, B00000, B00000, B00000, B00000 };   
byte letra24[8] = { B01000, B01000, B10000, B00000, B00000, B00000, B00000, B00000 };   
    
// Caliente

// Frame1
byte letra25[8] = { B10100, B00010, B00001, B00101, B01010, B01000, B01011, B01010 };   
byte letra26[8] = { B01110, B10001, B10101, B10101, B10101, B10101, B01110, B11111 };   
byte letra27[8] = { B01000, B00100, B01010, B10010, B00100, B10010, B11010, B01010 };   
byte letra28[8] = { B01010, B01010, B01001, B00100, B00010, B00001, B00001, B00000 };   
byte letra29[8] = { B11111, B11111, B00000, B11111, B01110, B00000, B11111, B00000 };   
byte letra30[8] = { B01001, B01010, B10100, B01000, B01000, B01000, B11000, B00000 };   
    
// Frame2   
byte letra31[8] = { B00100, B01000, B00001, B00011, B00110, B01000, B01011, B01010 };   
byte letra32[8] = { B01110, B10001, B10101, B10101, B10101, B10101, B01110, B11111 };   
byte letra33[8] = { B10001, B01000, B11000, B10100, B00100, B10010, B11010, B01010 };   
byte letra34[8] = { B00110, B00110, B00101, B00110, B00001, B00000, B00000, B00000 };   
byte letra35[8] = { B11111, B11111, B00000, B11111, B11110, B10001, B01111, B00000 };   
byte letra36[8] = { B01100, B01100, B10100, B01000, B11000, B00000, B00000, B00000 };   
    
// Muricion   
    
byte letra37[8] = { B00000, B00001, B00101, B01010, B01000, B00100, B00101, B01011 };   
byte letra38[8] = { B11110, B11001, B11101, B11101, B10111, B10101, B01110, B11111 };   
byte letra39[8] = { B00100, B01100, B10100, B00110, B00100, B01000, B11001, B01110 };   
byte letra40[8] = { B01011, B00110, B00101, B00010, B00001, B00000, B00000, B00000 };   
byte letra41[8] = { B11111, B11111, B01011, B11001, B10101, B00001, B01010, B11010 };   
byte letra42[8] = { B00000, B10000, B10000, B11000, B11010, B00000, B01010, B01000 };

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Comunicacion Serial
  Serial.begin(9600);
  
  // Comunicacion con Objeto OneWire
  sensor.begin();

  // Iniciacion del LCD 16 * 2
  LCD.begin(16, 2);
  LCD.clear();

  // Inicializacion del monitor serial
  Serial.println("Iniciando");
  Serial.println("");

  // Iniciando el programa LCD
  
  LCD.setCursor(0,0);
  LCD.print("Sensor Temp.");
  LCD.setCursor(0,1);
  LCD.print("Cargando");
  
  Animacion();
  LCD.setCursor(9,1);
  LCD.print(".");
  
  Animacion();
  LCD.setCursor(10,1);
  LCD.print(".");
  
  Animacion();
  LCD.setCursor(11,1);
  LCD.print(".");
  
  Animacion();
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() { 
  // Prepara el sensor para la lectura 
  sensor.requestTemperatures();

  // Lectura de temperatura
  Temperatura = sensor.getTempCByIndex(0);

  // Impresion en el monitor Serial
  Serial.println("Temperatura es:");
  Serial.print(Temperatura); 
  Serial.println(" Grados Centigrados");
  Serial.println("");
  
  // LCD
  LCD.clear();
  LCD.setCursor(0, 0);
  LCD.print("Temp. en C");
  LCD.print((char)223);
  LCD.setCursor(0,1);
  LCD.print("C");
  LCD.print((char)223);
  LCD.print("=> ");
  LCD.print(Temperatura);

  //definicion de Animacion

  if (Temperatura < 0){
    Congelacion();
    delay(750);  
  }
  else if (Temperatura >= 0 && Temperatura < 6){
    Cero();
    delay(750);
  }
  else if (Temperatura >= 6 && Temperatura < 21){
    Frio();
    delay(750);
  }
  else if (Temperatura >= 21 && Temperatura < 41){
    Ambiente();
    delay(750);
  }
  else if (Temperatura >= 41 && Temperatura < 51){
    for (i = 0; i < 3; i++)
    Caliente();
  }
  else{
    for (i = 0; i < 3; i++)
    Muricion();
  }
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

//Funcion Congelación

void Congelacion (){
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
}

//funcion Cero

void Cero() {
  //Creacion de Caracteres 1
  LCD.createChar(1, letra7);
  LCD.createChar(2, letra8);
  LCD.createChar(3, letra9);
  LCD.createChar(4, letra10);
  LCD.createChar(5, letra11);
  LCD.createChar(6, letra12);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);
}

//Funcion Frio

void Frio(){
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
}

//Funcion Ambiente

void Ambiente(){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra19);
  LCD.createChar(2, letra20);
  LCD.createChar(3, letra21);
  LCD.createChar(4, letra22);
  LCD.createChar(5, letra23);
  LCD.createChar(6, letra24);
  
  //Frame 1
  LCD.setCursor(13,0);
  LCD.write(1);
  LCD.write(2);
  LCD.write(3);
  LCD.setCursor(13,1);
  LCD.write(4);
  LCD.write(5);
  LCD.write(6);
}

// Funcion Caliente

void Caliente(){
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

  //Creacion de Caracteres 2
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

// Funcion Muricion

void Muricion(){
  //Creacion de Caracteres 1
  LCD.createChar(1, letra31);
  LCD.createChar(2, letra32);
  LCD.createChar(3, letra33);
  LCD.createChar(4, letra34);
  LCD.createChar(5, letra35);
  LCD.createChar(6, letra36);
  
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
  LCD.createChar(1, letra37);
  LCD.createChar(2, letra38);
  LCD.createChar(3, letra39);
  LCD.createChar(4, letra40);
  LCD.createChar(5, letra41);
  LCD.createChar(6, letra42);
  
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

void Animacion(){
  // Uno
  Congelacion();
  delay(200);
  // Dos
  Cero();
  delay(200);
  // Tres
  Frio();
  delay(200);
  // Cuatro
  Ambiente();
  delay(200);
  // Cienco
  Caliente();
  // Seis
  Muricion();
}

//-------------------------------------------------------------------------------
