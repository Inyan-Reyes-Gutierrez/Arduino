/*-------------------------------------------------------------------------------
  Practica numero 07 - Comunicación I2C entre dos placas de desarrollo (Master)
  Desc: Implementando dos Placas de desarrollo del tipo “Arduino”, un Arduino 
  NANO y Un MICRO PRO se hará una comunicación I2C entre ambas placas y se 
  transmite un mensaje que se vera reflejada en un Diodo LED que Parpadeará 
  siguiendo un patrón.
---------------------------------------------------------------------------------
  By implementing two 'Arduino' development boards, an Arduino NANO and a MICRO 
  PRO, an I2C communication will be established between both boards, and a 
  message will be transmitted, which will be reflected in an LED diode that 
  will blink following a pattern

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Codigo del Maestro
#include <Wire.h>

// Variables
int x = 0, Tra = 0;
String Apertura;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  Wire.begin(); // Arrancar el bus I2C como maestro
  Serial.begin(9600);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Switch de control
  Tra = SwitchControl(x);

  // Incrementa x
  Serial.print("X es: ");
  Serial.println(x);
  Serial.print("Tra es: ");
  Serial.println(Tra);
  x++;
  
  // transime un valor dado al esclavo
  Wire.beginTransmission(1); // iniciando transmisión al dispositivo #1
  Wire.write(Tra);             // manda x
  Wire.endTransmission();   // dejar de transmitir
  delay(40);

  // Ciclo de espera respuesta del esclavo
  do{
    // Pide al esclavo una cadena de 4 bits
    Wire.requestFrom(1, 5);
    while(Wire.available()){
      char c = Wire.read();
      Apertura = String(Apertura + c);
      if(Apertura == "CLOSE"){
        Apertura = "";
      }
    }
  } while (Apertura != "OPEN ");
  Apertura = "";

  // Espera de x = 40
  if (x == 66){
    x = 0;
    delay(1500);
  }
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

int SwitchControl (int a){
  // Variable
  int Men = 0;

  // Switch Estado
  switch (a){
    case 0:
      // H
      Men = 49;
      break;
    case 1:
      // H
      Men = 8;
      break;
    case 2:
      // EspLet
      Men = 48;
      break;
    case 3:
      // O
      Men = 16;
      break;
    case 4:
      // EspLet
      Men = 48;
      break;
    case 5:
      // L
      Men = 12;
      break;
    case 6:
      // EspLet
      Men = 48;
      break;
    case 7:
      // A
      Men = 1;
      break;
    case 8:
      // EspPal
      Men = 49;
      break;
    case 9:
      // M
      Men = 13;
      break;
    case 10:
      // EspLet
      Men = 48;
      break;
    case 11:
      // U
      Men = 22;
      break;
    case 12:
      // EspLet
      Men = 48;
      break;
    case 13:
      // N
      Men = 14;
      break;
    case 14:
      // EspLet
      Men = 48;
      break;
    case 15:
      // D
      Men = 4;
      break;
    case 16:
      // EspLet
      Men = 48;
      break;
    case 17:
      // O
      Men = 16;
      break;
    case 18:
      // ,
      Men = 38;
      break;
    case 19:
      // EspPal
      Men = 49;
      break;
    case 20:
      // S
      Men = 20;
      break;
    case 21:
      // EspLet
      Men = 48;
      break;
    case 22:
      // I
      Men = 9;
      break;
    case 23:
      // EspPal
      Men = 49;
      break;
    case 24:
      // L
      Men = 12;
      break;
    case 25:
      // EspLet
      Men = 48;
      break;
    case 26:
      // E
      Men = 5;
      break;
    case 27:
      // EspLet
      Men = 48;
      break;
    case 28:
      // E
      Men = 5;
      break;
    case 29:
      // EspLet
      Men = 48;
      break;
    case 30:
      // S
      Men = 20;
      break;
    case 31:
      // EspPal
      Men = 49;
      break;
    case 32:
      // E
      Men = 5;
      break;
    case 33:
      // EspLet
      Men = 48;
      break;
    case 34:
      // S
      Men = 20;
      break;
    case 35:
      // EspLet
      Men = 48;
      break;
    case 36:
      // T
      Men = 21;
      break;
    case 37:
      // EspLet
      Men = 48;
      break;
    case 38:
      // O
      Men = 16;
      break;
    case 39:
      // EspLet
      Men = 48;
      break;
    case 40:
      // ,
      Men = 38;
      break;
    case 41:
      // EspPal
      Men = 49;
      break;
    case 42:
      // E
      Men = 5;
      break;
    case 43:
      // EspLet
      Men = 48;
      break;
    case 44:
      // R
      Men = 19;
      break;
    case 45:
      // EspLet
      Men = 48;
      break;
    case 46:
      // E
      Men = 5;
      break;
    case 47:
      // EspLet
      Men = 48;
      break;
    case 48:
      // S
      Men = 20;
      break;
    case 49:
      // EspPal
      Men = 49;
      break;
    case 50:
      // U
      Men = 22;
      break;
    case 51:
      // EspLet
      Men = 48;
      break;
    case 52:
      // N
      Men = 14;
      break;
    case 53:
      // EspPal
      Men = 49;
      break;
    case 54:
      // C
      Men = 3;
      break;
    case 55:
      // EspLet
      Men = 48;
      break;
    case 56:
      // R
      Men = 19;
      break;
    case 57:
      // EspLet
      Men = 48;
      break;
    case 58:
      // A
      Men = 1;
      break;
    case 59:
      // EspLet
      Men = 48;
      break;
    case 60:
      // C
      Men = 3;
      break;
    case 61:
      // EspLet
      Men = 48;
      break;
    case 62:
      // K
      Men = 11;
      break;
    case 63:
      // EspLet
      Men = 48;
      break;
    case 64:
      // .
      Men = 39;
      break;
    case 65:
      // Parpadeo
      Men = 50;
      break;
  }
  
  // Variable a Retornar
  return Men;
}

//-------------------------------------------------------------------------------
