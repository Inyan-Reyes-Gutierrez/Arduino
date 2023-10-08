/*-------------------------------------------------------------------------------
  Practica numero XX - XXXX (Blink)
  Desc: Implementando un Display LCD de 16x2 junto con una interfaz I2C, una 
  placa de desarrollo Arduino nano, y un Keypad se desarrollará un sistema 
  que funcione con las operaciones básicas de una calculadora, mostrando en 
  el LCD una retroalimentación al usuario con los resultados esperados.
---------------------------------------------------------------------------------
  By implementing a 16x2 LCD display along with an I2C interface, an Arduino Nano 
  development board, and a keypad, a system will be developed to perform basic 
  calculator operations, providing user feedback on the LCD with the expected 
  results.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

#include <LiquidCrystal_I2C.h>  // Libreria LCD con Interfaz I2C
#include <Keypad.h>             // Libreria Keypad
#include<Wire.h>                // Libreria Manejo I2C

LiquidCrystal_I2C lcd(0x27,16,2); //Iniciacion LCD

// Iniciacion Teclado

const byte FILAS = 4;
const byte COLUMNAS = 4;
char keys [FILAS][COLUMNAS] = {
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};

byte pinFilas [FILAS] = {2, 3, 4, 5};
byte pinColumnas [COLUMNAS] = {6, 7, 8, 9};

Keypad tec = Keypad(makeKeymap (keys), pinFilas, pinColumnas, FILAS, COLUMNAS);

// Definicion Pixel Arts

//Instrucciones

byte letra1[8] = { B01001, B10100, B11101, B10100, B00000, B10001, B11000, B11001 };        
byte letra2[8] = { B10010, B00111, B10010, B00000, B00000, B10000, B00111, B10000 };        
byte letra3[8] = { B01101, B01000, B01101, B00000, B00000, B00101, B01100, B01101 };        
byte letra4[8] = { B10101, B00010, B10101, B00000, B00000, B10100, B00010, B10001 };        
byte letra5[8] = { B00110, B01111, B00110, B01001, B00000, B01010, B01111, B01010 };        
byte letra6[8] = { B00110, B00000, B00110, B00000, B00000, B10110, B10000, B10110 };        
byte letra7[8] = { B01000, B11110, B01000, B00000, B10000, B10100, B11110, B00100 };        

// Cuadrado negro

byte letra8[8] = { B11111, B11111, B11111, B11111, B11111, B11111, B11111, B11111 };

// Variables

int Curs[] = {0, 0};
int bandera = 0, segren = 0, caracteres = 0;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

// setup

void setup() {
  // Inicialización serial
  Serial.begin(9600);
  
  // Iniciacion del LCD
  lcd.init();
  lcd.backlight();
  lcd.clear();

  // Cuadrado Negro

  lcd.createChar(8, letra8);

  //Mensaje de bienvenida
  
  lcd.setCursor(0,0);
  lcd.print("ArduCalculadora");
  lcd.setCursor(0,1);
  for (int i = 1; i < 5; i++){
    lcd.write(8);
  }
  lcd.print("  3000"); 
  lcd.setCursor(12,1);
  for (int i = 1; i < 5; i++){
    lcd.write(8);
  }
  delay(4000);
  lcd.clear();
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Definbición de variables    
  char lec, pasolec, blac;
  int operador;
  double Valor1, Valor2, Valorres;
  String numero;
  
  if (bandera < 2){
    pasolec = lec; 
    blac = lec;
    
    operador = 0;
    
    Valor1 = 0; 
    Valor2 = 0; 
    Valorres = 0;

    bandera++;

    Serial.println(caracteres);
    Serial.println(" ");
  }

  // Lectura de un valor

  lec = tec.getKey();

  // impresion de caracter leeido

  if (lec != blac){
    switch (lec){
      case 'A':
        if (Curs[1] == 0) operador = 1;
        break;
      case 'B':
        if (Curs[1] == 0) operador = 2;
        break;
      case 'C':
        if (Curs[1] == 0) operador = 3;
        break;
      case 'D':
        if (Curs[1] == 0) operador = 4;
        break;
      case '*':
        borrar();
        break;
      case '#':
        break;
      default:
        if (caracteres <= 13 && Curs[0] >= 0){
          lcd.setCursor(Curs[0], Curs[1]);
          lcd.print(lec);
          caracteres++;
          Serial.println(caracteres);
          Serial.println(" ");
        }
        break;
    }
  }

  // Saber si la lectura cambio

  if (lec != pasolec && lec != blac && lec != '*'){
    pasolec = lec;
    
    // Evitar que cacarcteres especiales hagan algo
    switch (lec){
      case 'A':
        break;
      case 'B':
        break;
      case 'C':
        break;
      case 'D':
        break;
      case '*':
        break;
      case '#':
        break;
      default:
        if (caracteres <= 13) Curs[0]++;
        break;
    }
  }

  // Segundo rrenglon

  if (segren == 0){
    renglon();
    segren = 1;
  }

  // paso al Segundo rrenglon

  if (operador > 0 && Curs[1] == 0){
    lcd.setCursor (15, 0);
    switch(operador){
      case 1:
        lcd.print("+");
        break;
      case 2:
        lcd.print("-");
        break;
      case 3:
        lcd.print("*");
        break;
      case 4:
        lcd.print("/");
        break;
    }

    // Limpieza segundo rrenglon

    for (int i = 0; i < 16; i++){
      lcd.setCursor(i ,1);
      lcd.print(" ");
    }

    // Matriz para segundo rrenglon
    
    Curs[0] = 0;
    Curs[1] = 1;
    operador = 0;
  }
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

// Borrado 

void borrar(){
  if(Curs[0] >= 1){
    Curs[0]--;
    lcd.setCursor(Curs[0], Curs[1]);
    lcd.print(" ");
    caracteres--;
  }
}

// Cuadrado negro

void cuadradoneg (int a, int b){
  lcd.createChar(8, letra8);

  lcd.setCursor(a, b);
  lcd.write(8);
}

// Definicion Renglos inferior

void renglon(){
  // Regla cantidad de digitos.
  lcd.setCursor(0, 1);
  lcd.print("Num 13 D");

  // Definicion Caracteres especiales
  lcd.createChar(1, letra1);
  lcd.createChar(2, letra2);
  lcd.createChar(3, letra3);
  lcd.createChar(4, letra4);
  lcd.createChar(5, letra5);
  lcd.createChar(6, letra6);
  lcd.createChar(7, letra7);

  lcd.setCursor(9,1);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
  lcd.write(7);
}

//-------------------------------------------------------------------------------
