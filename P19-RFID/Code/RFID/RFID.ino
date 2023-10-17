/*-------------------------------------------------------------------------------
  Practica numero 19 - RFID
  
  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

#include<Wire.h>
#include <LiquidCrystal_I2C.h>

#define Boton 10

LiquidCrystal_I2C lcd(0x27,16,2);

int Lec = 0, Loc = 0;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  pinMode(Boton, INPUT);
  
  lcd.init();
  lcd.backlight();
  lcd.clear();
  
  lcd.setCursor(0,0);
  lcd.print("... ArduRFID ..."); // Mensaje a desplegar
  lcd.setCursor(0,1);
  lcd.print("-- Loading... --"); // Mensaje 2 a desplegar
  delay(3000); // espera 3 segundos con el mensaje estatico 

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Tag RFID Leido:"); // Mensaje a desplegar
  
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  Lec = digitalRead(Boton);
  
  if (Lec == HIGH) {
    lcd.setCursor(0, 1);
    lcd.print("Leido");
    Loc++;
  }
  if (Loc >= 1) Loc = 0;

  if(Lec == LOW){
    lcd.setCursor(0,1);
    lcd.print("Tag No Detectado"); // Mensaje a desplegar
  }
  else{
    Borrar();

    lcd.setCursor(0,1);
    lcd.print("75A609A2");
    delay(1500);
  }
  delay(100);
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------

void Borrar(){
  for(int i = 0; i <= 15; i++){
    lcd.setCursor(i, 1);
    lcd.print(" ");
  }
}

//-------------------------------------------------------------------------------
