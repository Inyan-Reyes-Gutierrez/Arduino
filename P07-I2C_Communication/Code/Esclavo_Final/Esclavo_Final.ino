/*-------------------------------------------------------------------------------
  Practica numero 07 - Comunicación I2C entre dos placas de desarrollo (Slave)
  Desc: Implementando dos Placas de desarrollo del tipo “Arduino”, un Arduino 
  NANO y Un MICRO PRO se hará una comunicación I2C entre ambas placas y se 
  transmite un mensaje que se vera reflejada en un Diodo LED que Parpadeará 
  siguiendo un patrón.
---------------------------------------------------------------------------------
  By implementing two 'Arduino' development boards, an Arduino NANO and a 
  MICRO PRO, an I2C communication will be established between both boards, 
  and a message will be transmitted, which will be reflected in an LED diode 
  that will blink following a pattern

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Codigo del Esclavo
#include <Wire.h>

// Definiciones
#define Punto   100
#define Raya    300
#define Palabra 400
#define LED     4

// Variables
int Env = 0, i = 0, x = 0;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Define el pin LED como salida
  pinMode (LED, OUTPUT);
  // Arrancar el bus I2C como esclavo en la dirección 1
  Wire.begin(1); 
  Serial.begin(9600);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Esclavo recibe un numero
  Wire.onReceive (receiveEvent);

  // Switch de Control

  SwitchControl(Env);
  Serial.print("Env es: ");
  Serial.println(Env);
  Serial.print("X es: ");
  Serial.println(x);

  // Manda Palabra al Maestro
  Wire.onRequest(requestEvent);
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

// Funcion que recibe una variable

void receiveEvent(int bytes) {
  Env = Wire.read(); // leer un carácter del I2C
}

//evento de mandar una peticion

void requestEvent() {
  if (x == 0){
    Wire.write("CLOSE"); // responde con un mensaje de 6 bytes
    // como era de esperar por el maestro  
  }
  else{
    Wire.write("OPEN "); // responde con un mensaje de 6 bytes
    // como era de esperar por el maestro
  }
  x = 0;
}

// Switch de Control

void SwitchControl(int a){
  switch (a){
    case 1:
      // A
      LetraA();
      break;
    case 2:
      // B
      LetraB();
      break;
    case 3:
      // C
      LetraC();
      break;
    case 4:
      // D
      LetraD();
      break;
    case 5:
      // E
      LetraE();
      break;
    case 6:
      // F
      LetraF();
      break;
    case 7:
      // G
      LetraG();
      break;
    case 8:
      // H
      LetraH();
      break;
    case 9:
      // I
      LetraI();
      break;
    case 10:
      // J
      LetraJ();
      break;
    case 11:
      // K
      LetraK();
      break;
    case 12:
      // L
      LetraL();
      break;
    case 13:
      // M
      LetraM();
      break;
    case 14:
      // N
      LetraN();
      break;
    case 15:
      // Ñ
      LetraENE();
      break;
    case 16:
      // O
      LetraO();
      break;
    case 17:
      // P
      LetraP();
      break;
    case 18:
      // Q
      LetraQ();
      break;
    case 19:
      // R
      LetraR();
      break;
    case 20:
      // S
      LetraS();
      break;
    case 21:
      // T
      LetraT();
      break;
    case 22:
      // U
      LetraU();
      break;
    case 23:
      // V
      LetraV();
      break;
    case 24:
      // W
      LetraW();
      break;
    case 25:
      // X
      LetraX();
      break;
    case 26:
      // Y
      LetraY();
      break;
    case 27:
      // Z
      LetraZ();
      break;
    case 28:
      // 1
      Letra1();
      break;
    case 29:
      // 2
      Letra2();
      break;
    case 30:
      // 3
      Letra3();
      break;
    case 31:
      // 4
      Letra4();
      break;
    case 32:
      // 5
      Letra5();
      break;
    case 33:
      // 6
      Letra6();
      break;
    case 34:
      // 7
      Letra7();
      break;
    case 35:
      // 8
      Letra8();
      break;
    case 36:
      // 9
      Letra9();
      break;
    case 37:
      // 0
      Letra0();
      break;
    case 38:
      // ,
      LetraComa();
      break;
    case 39:
      // .
      LetraPunto();
      break;
    case 40:
      // ?
      LetraInte();
      break;
    case 41:
      // ;
      LetraPunCom();
      break;
    case 42:
      // :
      LetraDobPun();
      break;
    case 43:
      // /
      LetraDia();
      break;
    case 44:
      // +
      LetraSuma();
      break;
    case 45:
      // -
      LetraResta();
      break;
    case 46:
      // =
      LetraIgual();
      break;
    case 47:
      // ()
      LetraParen();
      break;
    case 48:
      // Espacio para Letras
      EspacioLetra();
      break;
    case 49:
      // Espacio para Palabras
      EspacioPalabra();
      break;
    case 50:
      // Parpadeo
      for(i = 0; i < 10; i++){
        digitalWrite(LED, HIGH);
        delay(Punto / 2);
        digitalWrite(LED, LOW);
        delay(Punto / 2);
      }
      i = 0;
      delay(550);
      break;
  }
  x = 1;
}

// Funciones simbolos de clave morce

void LetraA(){
  // Punto
  punto();
  // Raya
  raya();
}

void LetraB(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraC(){
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraD(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraE(){
  // Punto
  punto();
}

void LetraF(){
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraG(){
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraH(){
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraI(){
  // Punto
  punto();
  // Punto
  punto();
}

void LetraJ(){
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraK(){
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraL(){
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraM(){
  // Raya
  raya();
  // Raya
  raya();
}

void LetraN(){
  // Raya
  raya();
  // Punto
  punto();
}

void LetraENE(){
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraO (){
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraP(){
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraQ(){
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraR(){
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraS(){
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraT(){
  // Raya
  raya();
}

void LetraU(){
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraV(){
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraW(){
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraX(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraY(){
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraZ(){
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void Letra1(){
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
}

void Letra2(){
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
}

void Letra3(){
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
}

void Letra4(){
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
}

void Letra5(){
  // Punto
  punto();
  // PUnto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void Letra6(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void Letra7(){
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void Letra8(){
  // Raya()
  raya();
  // RAya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void Letra9(){
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
}

void Letra0(){
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
}

void LetraComa(){
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraPunto(){
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraInte(){
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // RAya
  raya();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraPunCom(){
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraDobPun(){
  // Raya
  raya();
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
}

void LetraDia(){
  // Raya+
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraSuma(){
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Punto
  punto();
}

void LetraResta(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // raya
  raya();
}

void LetraIgual(){
  // Raya
  raya();
  // Punto
  punto();
  // Punto
  punto();
  // Punto
  punto();
  // Raya
  raya();
}

void LetraParen(){
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
  // Raya
  raya();
  // Punto
  punto();
  // Raya
  raya();
}

// Raya y Punto

void raya(){
  digitalWrite(LED, HIGH);
  delay(Raya);
  digitalWrite(LED, LOW);
  delay(Punto);
}

void punto(){
  digitalWrite(LED, HIGH);
  delay(Punto);
  digitalWrite(LED, LOW);
  delay(Punto);
}

// Espacios

void EspacioLetra(){
  delay(Raya - 100);  
}

void EspacioPalabra(){
  delay(Palabra - 100);  
}

//-------------------------------------------------------------------------------
