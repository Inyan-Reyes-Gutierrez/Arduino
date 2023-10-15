/*-------------------------------------------------------------------------------
  Practica numero 17 - Lector de microSD y reproductor de Audio.
  Desc: Implementando una placa de desarrollo Arduino NANO y un módulo L/E de 
  microSD se acedera a un archivo de audio en formato WAV y será reproducido por 
  la placa de audio, esto con ayuda de un módulo de amplificación de Audio y una 
  Bocina de 5W.
---------------------------------------------------------------------------------
  implementing an Arduino NANO development board and a microSD L/E module an 
  audio file in WAV format is accessed and will be played by the audio board, 
  this with the help of an Audio amplifier module and a 5W Speaker.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Librerias y Definiciones
#include <SPI.h>    // incluye libreria interfaz SPI
#include <SD.h>     // incluye libreria para tarjetas SD
#include <TMRpcm.h> // Libreria de reproduccion de Audio

#define SSpin 10    // Slave Select en pin digital 10
#define Boton 2     // Boton de entrada
#define PinLED 3    // Pin del LED
#define Bocina 9    // Pin de la bocina.

// Objetos
TMRpcm Musica;
File archivo;       

// Variables
int Lec;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  //Iniciacion Audio
  Musica.speakerPin = Bocina;
  Musica.quality(1);
  Musica.setVolume(6);
  
  // Declaracion de I/O
  pinMode(PinLED, OUTPUT);
  pinMode(Boton, INPUT);
  pinMode(Bocina, OUTPUT);

  // Si Led Prendido, Apagar
  digitalWrite(PinLED, HIGH);
  delay(500);
  digitalWrite(PinLED, LOW);
  delay(500);

  // Iniciacion de MSD
  if (!SD.begin(SSpin)) {           // inicializacion de tarjeta SD
    while(!SD.begin(SSpin)){
      digitalWrite(PinLED, HIGH);   // si falla se muestra texto correspondiente y
    }
  }

  // Si Led Prendido, Apagar
  digitalWrite(PinLED, HIGH);
  delay(500);
  digitalWrite(PinLED, LOW);
  delay(500);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  Lec = digitalRead(Boton);

  // Lectura del Audio
  if(Lec == HIGH){
    // Prender el LED
    digitalWrite(PinLED, HIGH);

    //Reproducir el Audio
    Musica.play("Musica.wav");

    // Apagar el LED
    digitalWrite(PinLED, LOW);
  }
}

//-------------------------------------------------------------------------------
