/*-------------------------------------------------------------------------------
  Practica numero #16 – Detector de luz con LDR
  Desc: Implementando una placa de desarrollo Arduino NANO y una LDR, se 
  detectará el nivel de luz a la que está expuesto el ambiente aumentando o 
  disminuyendo el LDR y en base a eso, Cuando exista una iluminación baja, se 
  prendera un foco.
---------------------------------------------------------------------------------
  By implementing an Arduino NANO development board and an LDR, the level of light 
  to which the environment is exposed will be detected by increasing or decreasing 
  the LDR and based on that, when there is low illumination, a spotlight will be 
  turned on.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------
int Vo = 0;
int Vin = 5;
int R1 = 10000;
int Foco = 2;
float R2 = 0;
float Vout = 0;
float Volt = 0;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Definimos la Salida para prendere el foco
  pinMode(Foco, OUTPUT);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  // Lectura analogica
  Vo = analogRead(A0);

  // Conversion de entrada
  Vout = Vo * (Vin/1023.0);

  // Obtener valor LDR
  Volt = Vout/Vin; // Valor de la division de voltajes
  R2 = (Volt * R1)/(1 - Volt); // Valor de R2

  // Decicion si prender o  apagar el foco
  if (R2 >= 60000) digitalWrite(Foco, HIGH);
  else digitalWrite(Foco, LOW);
  delay(250);
}

//-------------------------------------------------------------------------------
