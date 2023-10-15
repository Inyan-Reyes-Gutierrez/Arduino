/*-------------------------------------------------------------------------------
  Practica numero 15 - Servomotor SG90
  Desc: Implementando una placa de desarrollo Arduino NANO utilizando la 
  librería Servo.h se controlará el movimiento de un servomotor moviéndolo de 0 
  a 180 grados y viceversa.
---------------------------------------------------------------------------------
  Implementing an Arduino NANO development board using the Servo.h library will 
  control the movement of a servo motor by moving it from 0 to 180 degrees and 
  vice versa.
  
  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de Librerias, variables y objetos ---------------------

// Librerias
#include <Servo.h> // Librerias Control de servomotores

// Objetos
Servo Servomotor; // Objeto que define Servomotores

//Variables
int PinServomotor = 2;  // Pin señal del Servomotor
int PulsoMinimo = 700; // Pulso Minimo en microsegundos
int PulsoMaximo = 2700; // Pulso Maximo en microsegundos
int i = 0;              // Variable incremental

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  Servomotor.attach(PinServomotor, PulsoMinimo, PulsoMaximo); // Definicion de los parametros de funcionamiento del servomotor
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Movimiento de 0 a 180 grados
  for (i = 0; i <= 180; i++){
    Servomotor.write(i); // Funcion de movimiento del Servomotor
    delay(35);
  }

  // Movimiento de 180 a 1 grados
  for (i = 179; i > 0; i--){
    Servomotor.write(i); // Funcion de movimiento del Servomotor
    delay(35);
  }
}

//-------------------------------------------------------------------------------
