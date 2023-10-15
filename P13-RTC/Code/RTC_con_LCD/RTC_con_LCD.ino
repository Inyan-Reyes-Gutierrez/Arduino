/*-------------------------------------------------------------------------------
  Practica numero 13 - Real Time Clock (RTC) con LCD
  Desc: Implementando una placa de desarrollo Arduino NANO junto con Real time 
  Clock o por su traducción Reloj de Tiempo Real (RTC), desplegaremos en un 
  Display LCD de 16x2 la hora que se extrajo del mismo, permitiendo al usuario 
  conocer la hora y el día exacto.
---------------------------------------------------------------------------------
  Implementing an Arduino NANO development board together with Real time Clock 
  (RTC), we will display on a 16x2 LCD Display the time extracted from it, 
  allowing the user to know the exact time and day.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Librerias

#include <LiquidCrystal_I2C.h>  // Libreria LCD con Interfaz I2C
#include <Wire.h>                // Libreria Manejo I2C
#include <RTClib.h>             // Libreria para el manejo del modulo RTC

// Creacion de objetos

RTC_DS3231 rtc;                   // Creacion del objeto RTC tipo RTC_DS3231
LiquidCrystal_I2C lcd(0x27,16,2); // Creacion del objeto LCD.

// Definicion de las figuras Pixel Arts

// Reloj Vacio

byte letra1[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };    
byte letra2[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };    
byte letra3[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };    
byte letra4[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };    
byte letra5[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };    
byte letra6[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };    
    
// Reloj 12

byte letra7[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };    
byte letra8[8] = { B11111, B00000, B01110, B00000, B00100, B01110, B01110, B01110 };    
byte letra9[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };    
byte letra10[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra11[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra12[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 1

byte letra13[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra14[8] = { B11111, B00000, B01110, B00000, B00000, B00001, B00011, B01111 };   
byte letra15[8] = { B11000, B00100, B00010, B01001, B10001, B10101, B10001, B00101 };   
byte letra16[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra17[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra18[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 2

byte letra19[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra20[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00011, B01111 };   
byte letra21[8] = { B11000, B00100, B00010, B01001, B00001, B01101, B11001, B10101 };   
byte letra22[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra23[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra24[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 3

byte letra25[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra26[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01111 };   
byte letra27[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B10101 };   
byte letra28[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra29[8] = { B01111, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra30[8] = { B11101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 4

byte letra31[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra32[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };   
byte letra33[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra34[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra35[8] = { B01111, B00011, B00001, B00000, B00000, B01110, B00000, B11111 };   
byte letra36[8] = { B00101, B10001, B11101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 5

byte letra37[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra38[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };   
byte letra39[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra40[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra41[8] = { B01111, B00011, B00011, B00001, B00000, B01110, B00000, B11111 };   
byte letra42[8] = { B00101, B00001, B00101, B10001, B11001, B00010, B00100, B11000 };   

// Reloj 6

byte letra43[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra44[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };   
byte letra45[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra46[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra47[8] = { B01110, B01110, B01110, B00100, B00000, B01110, B00000, B11111 };   
byte letra48[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 7

byte letra49[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra50[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };   
byte letra51[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra52[8] = { B10100, B10001, B10101, B10001, B10010, B01000, B00100, B00011 };    
byte letra53[8] = { B11110, B11000, B10000, B00000, B00000, B01110, B00000, B11111 };   
byte letra54[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 8

byte letra55[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10100 };   
byte letra56[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B01110 };   
byte letra57[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra58[8] = { B10101, B10011, B10110, B10000, B10010, B01000, B00100, B00011 };   
byte letra59[8] = { B11110, B11000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra60[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   
 
// Reloj 9

byte letra61[8] = { B00011, B00100, B01000, B10010, B10000, B10100, B10000, B10111 };   
byte letra62[8] = { B11111, B00000, B01110, B00000, B00000, B00000, B00000, B11110 };   
byte letra63[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra64[8] = { B10101, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra65[8] = { B11110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra66[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 10

byte letra67[8] = { B00011, B00100, B01000, B10010, B10000, B10111, B10001, B10100 };   
byte letra68[8] = { B11111, B00000, B01110, B00000, B00000, B10000, B11000, B11110 };   
byte letra69[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra70[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra71[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra72[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };   

// Reloj 11

byte letra73[8] = { B00011, B00100, B01000, B10010, B10001, B10100, B10000, B10100 };   
byte letra74[8] = { B11111, B00000, B01110, B00000, B10000, B11000, B11000, B11110 };   
byte letra75[8] = { B11000, B00100, B00010, B01001, B00001, B00101, B00001, B00101 };   
byte letra76[8] = { B10100, B10000, B10100, B10000, B10010, B01000, B00100, B00011 };   
byte letra77[8] = { B01110, B00000, B00000, B00000, B00000, B01110, B00000, B11111 };   
byte letra78[8] = { B00101, B00001, B00101, B00001, B01001, B00010, B00100, B11000 };

// Variables

int Hora = 0, Min = 0, Ant = 1;

//-----------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  Serial.begin(9600);
  Serial.println("A");
  
  // Iniciacion del LCD
  
  lcd.init();
  lcd.backlight();
  lcd.clear();
  
  // Comprovando funcionamiento RTC

  if (! rtc.begin()) {            // si falla la inicializacion del modulo
    lcd.setCursor(0,0);
    lcd.print("Modulo RTC");
    lcd.setCursor(0,1);
    lcd.print("no encontrado !"); // muestra mensaje de error  
    Serial.println("Modulo RTC no encontrado !");
    while (1);                    // bucle infinito que detiene ejecucion del programa
  }

  // Iniciacion del Reloj

  lcd.clear();

  lcd.setCursor(2,0);
  lcd.print("ArduReloj");
  lcd.setCursor(2,1);
  lcd.print("Iniciando");

  delay(250);
  for (int i = 0; i <= 12; i++){
    Relojele(i);
    delay(500);
  }

  delay(2000);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  DateTime fecha = rtc.now();      // funcion que devuelve fecha y horario en formato

  // Limpieza LCD
  Min = fecha.minute();
  if(Min != Ant || Min == 0){
    lcd.clear();
    Ant = Min;
  }

  // Asignacion de las variables de fecha

  // Renglon Superior
  lcd.setCursor(0,0);
  lcd.print(fecha.day());       // funcion que obtiene el dia de la fecha completa
  lcd.print("/");             // caracter barra como separador
  lcd.print(fecha.month());     // funcion que obtiene el mes de la fecha completa
  lcd.print("/");             // caracter barra como separador
  lcd.print(fecha.year());      // funcion que obtiene el año de la fecha completa
  
  // Renglon Inferior
  lcd.setCursor(0,1);
  lcd.print(fecha.hour());      // funcion que obtiene la hora de la fecha completa
  lcd.print(":");             // caracter dos puntos como separador
  lcd.print(fecha.minute());    // funcion que obtiene los minutos de la fecha completa
  lcd.print(":");             // caracter dos puntos como separador
  lcd.print(fecha.second());    // funcion que obtiene los segundos de la fecha completa

  // Delay y definicion reloj
  Hora = fecha.hour();
  Relojele(0);
  delay(400);
  Relojele(Hora);
  delay(400);
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

// Funcion Reloj Vacio

void RelojV() {
  //Creacion de Caracteres
  lcd.createChar(1, letra1);
  lcd.createChar(2, letra2);
  lcd.createChar(3, letra3);
  lcd.createChar(4, letra4);
  lcd.createChar(5, letra5);
  lcd.createChar(6, letra6);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 12

void Reloj12() {
  //Creacion de Caracteres 
  lcd.createChar(1, letra7);
  lcd.createChar(2, letra8);
  lcd.createChar(3, letra9);
  lcd.createChar(4, letra10);
  lcd.createChar(5, letra11);
  lcd.createChar(6, letra12);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 1

void Reloj1() {
  //Creacion de Caracteres
  lcd.createChar(1, letra13);
  lcd.createChar(2, letra14);
  lcd.createChar(3, letra15);
  lcd.createChar(4, letra16);
  lcd.createChar(5, letra17);
  lcd.createChar(6, letra18);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 2

void Reloj2() {
  //Creacion de Caracteres
  lcd.createChar(1, letra19);
  lcd.createChar(2, letra20);
  lcd.createChar(3, letra21);
  lcd.createChar(4, letra22);
  lcd.createChar(5, letra23);
  lcd.createChar(6, letra24);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 3

void Reloj3() {
  //Creacion de Caracteres
  lcd.createChar(1, letra25);
  lcd.createChar(2, letra26);
  lcd.createChar(3, letra27);
  lcd.createChar(4, letra28);
  lcd.createChar(5, letra29);
  lcd.createChar(6, letra30);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 4

void Reloj4() {
  //Creacion de Caracteres
  lcd.createChar(1, letra31);
  lcd.createChar(2, letra32);
  lcd.createChar(3, letra33);
  lcd.createChar(4, letra34);
  lcd.createChar(5, letra35);
  lcd.createChar(6, letra36);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}


// Funcion Reloj 5

void Reloj5() {
  //Creacion de Caracteres
  lcd.createChar(1, letra37);
  lcd.createChar(2, letra38);
  lcd.createChar(3, letra39);
  lcd.createChar(4, letra40);
  lcd.createChar(5, letra41);
  lcd.createChar(6, letra42);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}


// Funcion Reloj 6

void Reloj6() {
  //Creacion de Caracteres
  lcd.createChar(1, letra43);
  lcd.createChar(2, letra44);
  lcd.createChar(3, letra45);
  lcd.createChar(4, letra46);
  lcd.createChar(5, letra47);
  lcd.createChar(6, letra48);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}


// Funcion Reloj 7

void Reloj7() {
  //Creacion de Caracteres
  lcd.createChar(1, letra49);
  lcd.createChar(2, letra50);
  lcd.createChar(3, letra51);
  lcd.createChar(4, letra52);
  lcd.createChar(5, letra53);
  lcd.createChar(6, letra54);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}


// Funcion Reloj 8

void Reloj8() {
  //Creacion de Caracteres
  lcd.createChar(1, letra55);
  lcd.createChar(2, letra56);
  lcd.createChar(3, letra57);
  lcd.createChar(4, letra58);
  lcd.createChar(5, letra59);
  lcd.createChar(6, letra60);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 9

void Reloj9() {
  //Creacion de Caracteres
  lcd.createChar(1, letra61);
  lcd.createChar(2, letra62);
  lcd.createChar(3, letra63);
  lcd.createChar(4, letra64);
  lcd.createChar(5, letra65);
  lcd.createChar(6, letra66);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 10

void Reloj10() {
  //Creacion de Caracteres
  lcd.createChar(1, letra67);
  lcd.createChar(2, letra68);
  lcd.createChar(3, letra69);
  lcd.createChar(4, letra70);
  lcd.createChar(5, letra71);
  lcd.createChar(6, letra72);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion Reloj 11

void Reloj11() {
  //Creacion de Caracteres
  lcd.createChar(1, letra73);
  lcd.createChar(2, letra74);
  lcd.createChar(3, letra75);
  lcd.createChar(4, letra76);
  lcd.createChar(5, letra77);
  lcd.createChar(6, letra78);
  
  //Frame
  lcd.setCursor(13,0);
  lcd.write(1);
  lcd.write(2);
  lcd.write(3);
  lcd.setCursor(13,1);
  lcd.write(4);
  lcd.write(5);
  lcd.write(6);
}

// Funcion que elije una de las funciones de reloj

void Relojele(int num){
  switch (num){
    case 0:
      RelojV();
      break;
    case 1:
      Reloj1();
      break;
    case 2:
      Reloj2();
      break;
    case 3:
      Reloj3();
      break;
    case 4:
      Reloj4();
      break;
    case 5:
      Reloj5();
      break;
    case 6:
      Reloj6();
      break;
    case 7:
      Reloj7();
      break;
    case 8:
      Reloj8();
      break;
    case 9:
      Reloj9();
      break;
    case 10:
      Reloj10();
      break;
    case 11:
      Reloj11();
      break;
    case 12:
      Reloj12();
      break;
    case 13:
      Reloj1();
      break;
    case 14:
      Reloj2();
      break;
    case 15:
      Reloj3();
      break;
    case 16:
      Reloj4();
      break;
    case 17:
      Reloj5();
      break;
    case 18:
      Reloj6();
      break;
    case 19:
      Reloj7();
      break;
    case 20:
      Reloj8();
      break;
    case 21:
      Reloj9();
      break;
    case 22:
      Reloj10();
      break;
    case 23:
      Reloj11();
      break;
    case 24:
      Reloj12();
      break;
  }
}

//-------------------------------------------------------------------------------
