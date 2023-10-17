/*-------------------------------------------------------------------------------
  Practica numero 18 - Alarma Activada por movimiento.
  Desc: Implementando una placa de desarrollo Arduino NANO y un módulo L/E de 
  microSD se acedera a un archivo de audio en formato WAV, Este audio se 
  Activará como una alarma cada vez que el sensor de movimiento PIR se active.
---------------------------------------------------------------------------------
  implementing an Arduino NANO development board and a microSD L/E module an 
  audio file in WAV format is accessed. This audio will be triggered as an alarm 
  every time the PIR motion sensor is activated.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Librerias y Definiciones
#include <SPI.h>    // incluye libreria interfaz SPI
#include <SD.h>     // incluye libreria para tarjetas SD
#include <TMRpcm.h> // Libreria de reproduccion de Audio

#define SSpin 10    // Slave Select en pin digital 10
#define Boton 2     // Boton de entrada
#define PIR 3    // Pin del LED
#define Bocina 9    // Pin de la bocina.

// Objetos
TMRpcm Musica;       

// Variables
int Lec;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Definicion pines
  pinMode(PIR, INPUT);
  pinMode(PinLED, OUTPUT);
    
  //Iniciacion Audio
  Musica.speakerPin = Bocina;
  Musica.quality(1);
  Musica.setVolume(6);

  // Iniciacion de MSD
  if (!SD.begin(SSpin)) {           // inicializacion de tarjeta SD
    while(!SD.begin(SSpin)){
      digitalWrite(PinLED, HIGH);   // si falla se muestra texto correspondiente y
    }
  }

  // Retardo sensor
  delay(20000);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  Lec = digitalRead(PIR);

  // Lectura del Audio
  if(Lec == HIGH){
    //Reproducir el Audio
    Musica.play("Sirena.wav");
  }
}

//-------------------------------------------------------------------------------
