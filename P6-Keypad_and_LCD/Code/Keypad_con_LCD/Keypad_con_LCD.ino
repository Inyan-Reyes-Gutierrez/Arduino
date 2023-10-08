/*-------------------------------------------------------------------------------
  Practica numero 06 - Keypad con LCD
  Desc: Implementando un Display LCD de 16x2 junto con una interfaz I2C, una 
  placa de desarrollo Arduino nano, y un Keypad se desarrollará un sistema que 
  detecte las teclas pulsadas del Teclado y se verá una retroalimentación en el 
  Display LCD, mostrando diferentes acciones en este.
---------------------------------------------------------------------------------
  By implementing a 16x2 LCD display with an I2C interface, an Arduino Nano 
  development board, and a keypad, a system will be developed to detect the 
  pressed keys on the keypad and provide feedback on the LCD display, 
  displaying different actions.

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

Keypad Tec = Keypad(makeKeymap (keys), pinFilas, pinColumnas, FILAS, COLUMNAS);

// Definicion Pixel Arts

// Flecha Izq.
byte letra0[8] = { B00000, B00100, B01000, B11111, B01000, B00100, B00000, B00000 };    
// Flecha Der.
byte letra1[8] = { B00000, B00100, B00010, B11111, B00010, B00100, B00000, B00000 };    
// Rect. neg
byte letra2[8] = { B11111, B11111, B11111, B11111, B11111, B11111, B11111, B11111 };    
// Monigote Parado
byte letra4[8] = { B00100, B00100, B01110, B10101, B10101, B01110, B01010, B11011 };    
// Monigot C Der.
byte letra6[8] = { B00100, B00101, B11111, B10100, B00100, B01111, B01001, B11000 };    
// Monigote C Izq.
byte letra5[8] = { B00100, B10100, B11111, B00101, B00100, B11110, B10010, B00011 };

// Variables

//setcursor

int Curs[] = {0, 0};

int meFle = 0, Estme = 0, EstFle = 0, mePant = 0, Parpadeo = 0, Blanco = 0, Primera = 0;
char Lec, Memme, Blac = ' ', Imp, LecDeft;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Iniciacion del LCD
  Serial.begin(9600);
  lcd.init();
  lcd.backlight();
  lcd.clear();

  LecDeft = Tec.getKey();

  //Mensaje de bienvenida
  
  lcd.setCursor(2,0);
  lcd.print("Arduprograma");
  lcd.setCursor(2,1);
  lcd.print("Iniciando"); 
  delay(500);
   lcd.print("."); 
  delay(500);
   lcd.print("."); 
  delay(500);
   lcd.print("."); 
  delay(500);
  lcd.clear();
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Lectura Inicial
  Lec = Tec.getKey();

  //Cambio a una subfuncion

  if (Lec == 'A' && mePant == 0){
    switch (meFle){
      case 0:
        mePant = 1;
        lcd.clear();
        break;
      case 1:
        mePant = 2;
        lcd.clear();
        break;
    }
  }

  //Designacion Interfaz

  /*
  Estructura General:
  -> 1.- Teclear
     2.- Monigote
     3.- Nada
  */
  
  if (Lec != Memme && mePant == 0){ 
    if (Lec == '2') meFle--;
    else if (Lec == '8') meFle++;
  
    // Cambio a la secuencia 2 del menu
    if (meFle == 2 && Estme == 0) Estme++;
    // de regraso a la secuencia 1 hacia abajo
    else if (meFle == 3){
      Estme--;
      meFle = 0;
    }
    //Regreso a la secuencia 1 arriba
    else if (meFle == 0 && Estme == 1) Estme--;
    // Salto a Secuencia 2 arriba
    else if (meFle == -1){
      Estme++;
      meFle = 2;
    }
    Memme = Lec;
  }
  
  //menu

  /*
  Estructura General:
  -> 1.- Teclear
     2.- Monigote
     3.- Nada
  */

  switch (mePant){

    //Menu principal
    
    case 0:
      switch (Estme){
        case 0:
          lcd.setCursor (2,0);
          lcd.print("1.- Teclear ");
          lcd.setCursor (2,1);
          lcd.print("2.- Monigote");
          break;
        case 1:
          /*
          if(Lec != Memme){
            lcd.setCursor (0, EstFle);
            lcd.print(" ");
            EstFle = FlechaMenu(meFle, Estme, Blanco);
            Memme = Lec;
          }
          */
          lcd.setCursor (2,0);
          lcd.print("2.- Monigote");
          lcd.setCursor (2,1);
          lcd.print("3.- Nada    ");
          break;
      }
  
      // Parpadeo de Flecha
  
      Parpadeo++;
      if (Parpadeo == 7){
        Parpadeo = 0;
        Blanco++;
      }
      else if (Blanco == 2){
        Blanco = 0;
      }
      EstFle = ParpadeoFle(meFle, Estme, Blanco, EstFle);
      break;

    //Sub menu de escritura
    
    case 1:
      //configuracion primera vez que se entra:

      if(Primera == 0){
        lcd.clear();
        lcd.setCursor(Curs [0], Curs [1]);
        Primera++;
        Imp = Lec;
        Memme = Lec;
      }

      if (Memme != Lec && Curs[1] < 2){
        //Imprimir
        Imp = Lec;
        Memme = Lec;

        //Seleccion
        lcd.setCursor(Curs [0], Curs [1]);
        
        // Impresion caracter y especiales
        if (Imp != LecDeft) {
          if (Imp == '*') lcd.print(" ");
          else if (Imp == '#'){
            if (Curs [0] != 0 && Curs [1] == 0){
              Curs [0]--;
              lcd.setCursor(Curs [0], Curs [1]);
              lcd.print(" "); 
            }
            else if (Curs [0] == 0 && Curs [1] == 1) {
              Curs [0] = 15;
              Curs [1] = 0;
              lcd.setCursor(Curs [0], Curs [1]);
              lcd.print(" ");  
            }
            else if (Curs [0] != 0 && Curs [1] == 1){
              Curs [0]--;
              lcd.setCursor(Curs [0], Curs [1]);
              lcd.print(" ");
            }
          }
          else if (Imp == 'D') {
            mePant = 0;
            Curs [0] = 0;
            Curs [1] = 0;
            Primera = 0;
            lcd.clear();
          }
          else if (Imp != '#') lcd.print(Imp);
        }
        
        if (Imp != LecDeft && (Imp != '#' && Imp != 'D')) Curs[0]++;
        
        if(Curs[0] == 16 && Curs[1] < 2){
          Curs[0] = 0;
          Curs[1]++;
        }
      }
      else if(Memme != Lec && Curs[1] >= 2){
        lcd.clear();
        lcd.setCursor (0, 0);
        lcd.print("Espacio Exedido");
        lcd.setCursor (0, 1);
        lcd.print("Limpiando");
        Curs[0] = 0;
        Curs[1] = 0;
        delay(1000);
        lcd.clear();
      }
      break;

      // Monigote

    case 2:
      // Configuración de primera vez que se entra

      if(Primera == 0){
        Lec = '0';
        lcd.clear();
        Curs [0] = 8; 
        Primera++;
        
        // mono

        MonParado(Curs [0], Curs [1]);
      }

      // Arriba
      
      if (Lec == '2'){
        lcd.setCursor(Curs [0], Curs [1]);
        lcd.print(" ");
        
        if (Curs [1] > 0) Curs [1]--;
        else Curs [1]++;

        MonCIzq(Curs [0], Curs [1]);
      }

      // Abajo

      else if (Lec == '8'){
        lcd.setCursor(Curs [0], Curs [1]);
        lcd.print(" ");
        
        if (Curs [1] < 1) Curs [1]++;
        else Curs [1]--;

        MonCDer(Curs [0], Curs [1]);
      }

      // Izquierda

      else if (Lec == '4'){
        lcd.setCursor(Curs [0], Curs [1]);
        lcd.print(" ");
        
        if (Curs [0] == 0) Curs [0] = 15;
        else Curs [0]--;

        MonCIzq(Curs [0], Curs [1]);
      }

      // Derecha

      else if (Lec == '6'){
        lcd.setCursor(Curs [0], Curs [1]);
        lcd.print(" ");
        
        if (Curs [0] == 15) Curs [0] = 0;
        else Curs [0]++;

        MonCDer(Curs [0], Curs [1]);
      }

      // Salir

      else if (Lec == 'A'){
        mePant = 0;
        Curs [0] = 0;
        Curs [1] = 0;
        Primera = 0;
        lcd.clear();
      }
      break;
  }
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

// Funcion Designacion Flecha de la flecha del menu

int ParpadeoFle (int mefle, int estme, int blanco, int estfle){
  //Anticipando posicion de la flecha
  int Flecha = 0;
  if(mefle == 2) Flecha++;
  else if (mefle == 1 && estme == 0) Flecha++;

  if(estfle != Flecha){
      if (Flecha == 0){
        lcd.setCursor (0, 1);
        lcd.print(" ");
      }
      else{
        lcd.setCursor (0, 0);
        lcd.print(" ");
      }
  }
  
  //generando la posicion
  lcd.createChar(1, letra1);
  
  lcd.setCursor(0, Flecha);
  if (blanco == 0)lcd.write(1);
  else lcd.print(" ");

  return Flecha;
}

// Monigote sin Movimiento

void MonParado (int a, int b){
  lcd.createChar(2, letra4);

  lcd.setCursor(a, b);
  lcd.write(2);
}

void MonCIzq (int a, int b){
  lcd.createChar(2, letra4);
  lcd.createChar(3, letra5);

  lcd.setCursor(a, b);
  lcd.write(3);
  delay(500);
  lcd.setCursor(a, b);
  lcd.write(2);
}

void MonCDer (int a, int b){
  lcd.createChar(2, letra4);
  lcd.createChar(3, letra6);

  lcd.setCursor(a, b);
  lcd.write(3);
  delay(500);
  lcd.setCursor(a, b);
  lcd.write(2);
}

//-------------------------------------------------------------------------------
