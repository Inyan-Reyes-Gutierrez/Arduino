/*-------------------------------------------------------------------------------
  Practica numero 10 - Sensor de Movimiento y Zimbador
  Desc: Implementando un Sensor de Movimiento "PIR" y un zumbador pasivo se 
  realizara un sistema que se asimile a un sistema de alarma por detección de 
  movimiento.
---------------------------------------------------------------------------------
  Implementando un Sensor de Movimiento "PIR" y un zumbador pasivo, se realizará 
  un sistema parecido a un sistema de alarma de detección de movimiento.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

#define NOTE_MI    329
#define NOTE_FA    349
#define NOTE_FAB   370
#define NOTE_SOL   392
#define NOTE_SOLB  415
#define NOTE_LA    440
#define NOTE_LAB   466
#define NOTE_SI    494
#define NOTE_DO    523
#define NOTE_DOB   554
#define NOTE_RE    587
#define NOTE_REB   622
#define NOTE_MI2   659

#define BUZZER_PASIVO 8   // buzzer pasivo en pin 8
#define PIR 3
#define LED 2


int melodia[] = {   // array con las notas de la melodia
  NOTE_MI, NOTE_MI, NOTE_REB, NOTE_SI, NOTE_LAB, NOTE_LA, NOTE_SOL, NOTE_MI, NOTE_SOL, NOTE_LA, 0, 0
};

int duraciones[] = {    // array con la duracion de cada nota
  4, 4, 4, 8, 4, 4, 4, 8, 8, 2, 8, 8
};

int Estado = 0;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  pinMode(BUZZER_PASIVO, OUTPUT); // pin 8 como salida
  pinMode(PIR, INPUT);
  pinMode(LED, OUTPUT);
  delay(20000);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  Estado = digitalRead(PIR);
  if (Estado == HIGH){
    digitalWrite(LED, HIGH);

    for (int i = 0; i < 11; i++) {     // bucle repite 8 veces
      int duracion = 1200 / duraciones[i];    // duracion de la nota en milisegundos
      tone(BUZZER_PASIVO, melodia[i], duracion);  // ejecuta el tono con la duracion
      int pausa = duracion * 1.50;      // calcula pausa
      delay(pausa);         // demora con valor de pausa
      noTone(BUZZER_PASIVO);        // detiene reproduccion de tono
    }
    
    delay(1000);
  }
  else digitalWrite(LED, LOW );
}

//-------------------------------------------------------------------------------
