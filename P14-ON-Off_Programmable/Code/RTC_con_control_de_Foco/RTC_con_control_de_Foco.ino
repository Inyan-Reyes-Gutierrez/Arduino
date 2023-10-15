/*-------------------------------------------------------------------------------
  Practica numero 14 - RTC con Control de foco programable.
  Desc: Implementando una placa de desarrollo Arduino NANO junto con Real time 
  Clock o por su traducción Reloj de Tiempo Real (RTC), desplegaremos en un 
  Display LCD de 16x2 la hora que se extrajo del mismo, de la misma forma se 
  le permitirá al usuario elegir una hora en la que un foco que estará conectado 
  con una malla de potencia encenderá y apagara de forma automática.
---------------------------------------------------------------------------------
  Implementing an Arduino NANO development board together with Real time Clock 
  (RTC), we will display on a 16x2 LCD Display the time that was extracted from 
  it, in the same way it will allow the user to choose a time in which a light 
  bulb that will be connected to a power grid will turn on and off automatically.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

// Librerias.
#include <Keypad.h>             // Libreria del KeyPAD
#include <LiquidCrystal_I2C.h>  // Libreria LCD con Interfaz I2C
#include <Wire.h>               // Libreria Manejo I2C
#include <RTClib.h>             // Libreria para el manejo del modulo RTC

// Definiciones
#define Foco 10

// Definiciones para el uso teclado
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

// Creacion de Objetos
RTC_DS3231 rtc;                                                                   // Creacion del objeto RTC tipo RTC_DS3231.
LiquidCrystal_I2C lcd(0x27,16,2);                                                 // Creacion del objeto LCD.
Keypad Tec = Keypad(makeKeymap (keys), pinFilas, pinColumnas, FILAS, COLUMNAS);   // Creacion del objeto del teclado.

// Definicion de las figuras Pixel Arts

// Flecha
byte letra1[8] = { B00000, B00100, B00110, B11111, B11111, B00110, B00100, B00000 };        
    
// Regrasar
byte letra2[8] = { B00010, B00110, B01111, B01111, B00110, B00010, B00000, B00000 };    
byte letra3[8] = { B00000, B00000, B11111, B11111, B00011, B00011, B01111, B01111 };    

// Enter
byte letra4[8] = { B00000, B00001, B00001, B00101, B01101, B11111, B01100, B00100 };

// Definicion de Variables
// Menus
int Menu = 0;                 // Variable para estado del menu
int Menu1 = 0;
int i = 0;
int Eror = 0;
int Numero1 = 0, Numero2 = 0, Numero3 = 0, Numero4 = 0;
int EstFoco = 0;

//HOras
int HoraON = 0, HoraOFF = 0;  // Horas Encendido y Apagado
int MinON = 0, MinOFF = 0;    // Minutos Encendido y Aoagado
int Refres = 9;               // Refrescar pantalla

// Caracteres
char Lec;                     // Variable de Lectura Keypat
char LecAnt;                  // Lectura Anterior del teclado
char ModErr;

// Cadena
String Num = "";

// vareables booleanas
bool Pase = true;
bool PaseTodo = true;

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  //Modo de los pines
  pinMode(Foco, OUTPUT);
  
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
    while (1);                    // bucle infinito que detiene ejecucion del programa
  }

  // Iniciacion del Reloj
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("ArduReloj Progr.");
  lcd.setCursor(2,1);
  lcd.print("Iniciando...");

  ModErr = Tec.getKey();
  delay(3000);
  lcd.clear();
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop() {
  DateTime fecha = rtc.now();
  // Lectura del teclado
  Lec = Tec.getKey();

  // Primera Vuelta
  if(i == 0) {
    Lec = Tec.getKey();
    LecAnt = Lec;
    i++;
  }
  
  switch (Menu){
    case 0:
      // Menu Principal
      lcd.setCursor(0,0);
      lcd.print("1:Ver Hora");
      lcd.setCursor(0,1);
      lcd.print("2:Programar Hora");

      // Cambio del Menu
      if(Lec == '1') Menu = 1;
      else if(Lec == '2') Menu = 2;
      else if(Lec != LecAnt){
        Error();
        Eror++;
      }

      //Retardo
      delay(100);
      break;
    case 1:
      if (Refres == 9){
        lcd.clear();
        switch(Menu1){
          case 0:
            Hora();
            SinProg();
            break;
          case 1:
            Hora();
            Encendido();
            break;
          case 2:
            Hora();
            Apagado();
            break;
        }
        Refres = 0;
      }
      Refres++;

      // Volver al menu Principal
      if (Lec == 'B'){
        Menu = 0;
        Refres = 9;
        Eror++;
        lcd.clear();
      }

      // Retardo
      delay(100);
      break;
    case 2:
      // Establecer La Hora de Encendido
      ProgHora1();

      lcd.setCursor(5, 1);
      i = 0;
      while(Pase && PaseTodo){
        // Primer Ciclo
        if(i == 0) {
          Lec = Tec.getKey();
          LecAnt = Lec;
          i++;
        }
        else Lec = Tec.getKey();  

        // Evento de la variable
        if(Lec != LecAnt){
          if(Lec != ModErr){
            lcd.print(Lec);
            i++;
            Num = Num + Lec;
          }
        }

        // Numero Correcto
        if (Lec == 'A'){
          Numero1 = Num.toInt();
          if (Numero1 >= 0 && Numero1 <= 23){
            Pase = false;
            Num = "";
          }
          else{
            Error();
            ProgHora1();
            Eror++;
            Num = "";
            lcd.setCursor(5, 1);
          }
        }

        // Regresar al menu anterior
        if(Lec == 'B'){
          PaseTodo = false;
          Menu = 0;
        }

        // Error de i mayor a dos digitos
        if (i >= 5){
          Error();
          ProgHora1();
          Eror++;
          Num = "";
          lcd.setCursor(5, 1);
          i = 1;
        }

        
        if(Eror == 0) LecAnt = Lec;
        else if(Eror == 1) Eror = 0;
      }
      
      // Establecer Minutos de Encendido
      ProgHora2();

      lcd.setCursor(5, 1);
      i = 0;
      Pase = true;
      while(Pase && PaseTodo){
        // Primer Ciclo
        if(i == 0) {
          Lec = Tec.getKey();
          LecAnt = Lec;
          i++;
        }
        else Lec = Tec.getKey();  

        // Evento de la variable
        if(Lec != LecAnt){
          if(Lec != ModErr){
            lcd.print(Lec);
            i++;
            Num = Num + Lec;
          }
        }

        // Numero Correcto
        if (Lec == 'A'){
          Numero2 = Num.toInt();
          if (Numero2 >= 0 && Numero2 <= 59){
            Pase = false;
            Num = "";
          }
          else{
            Error();
            ProgHora2();
            Eror++;
            Num = "";
            lcd.setCursor(5, 1);
          }
        }

        // Regresar al menu anterior
        if(Lec == 'B'){
          PaseTodo = false;
          Menu = 0;
        }

        // Error de i mayor a dos digitos
        if (i >= 5){
          Error();
          ProgHora2();
          Eror++;
          Num = "";
          lcd.setCursor(5, 1);
          i = 1;
        }
        
        if(Eror == 0) LecAnt = Lec;
        else if(Eror == 1) Eror = 0;
      }

      // Establecer Minutos de Encendido
      ProgHora3();

      lcd.setCursor(5, 1);
      i = 0;
      Pase = true;
      while(Pase && PaseTodo){
        // Primer Ciclo
        if(i == 0) {
          Lec = Tec.getKey();
          LecAnt = Lec;
          i++;
        }
        else Lec = Tec.getKey();  

        // Evento de la variable
        if(Lec != LecAnt){
          if(Lec != ModErr){
            lcd.print(Lec);
            i++;
            Num = Num + Lec;
          }
        }

        // Numero Correcto
        if (Lec == 'A'){
          Numero3 = Num.toInt();
          if (Numero3 >= 0 && Numero3 <= 23){
            Pase = false;
            Num = "";
          }
          else{
            Error();
            ProgHora3();
            Eror++;
            Num = "";
            lcd.setCursor(5, 1);
          }
        }

        // Regresar al menu anterior
        if(Lec == 'B'){
          PaseTodo = false;
          Menu = 0;
        }

        // Error de i mayor a dos digitos
        if (i >= 5){
          Error();
          ProgHora3();
          Eror++;
          Num = "";
          lcd.setCursor(5, 1);
          i = 1;
        }
        
        if(Eror == 0) LecAnt = Lec;
        else if(Eror == 1) Eror = 0;
      }

      // Establecer Minutos de Encendido
      ProgHora4();

      lcd.setCursor(5, 1);
      i = 0;
      Pase = true;
      while(Pase && PaseTodo){
        // Primer Ciclo
        if(i == 0) {
          Lec = Tec.getKey();
          LecAnt = Lec;
          i++;
        }
        else Lec = Tec.getKey();  

        // Evento de la variable
        if(Lec != LecAnt){
          if(Lec != ModErr){
            lcd.print(Lec);
            i++;
            Num = Num + Lec;
          }
        }

        // Numero Correcto
        if (Lec == 'A'){
          Numero4 = Num.toInt();
          if (Numero4 >= 0 && Numero4 <= 59){
            Pase = false;
            Num = "";
          }
          else{
            Error();
            ProgHora4();
            Eror++;
            Num = "";
            lcd.setCursor(5, 1);
          }
        }

        // Regresar al menu anterior
        if(Lec == 'B'){
          PaseTodo = false;
          Menu = 0;
        }

        // Error de i mayor a dos digitos
        if (i >= 5){
          Error();
          ProgHora4();
          Eror++;
          Num = "";
          lcd.setCursor(5, 1);
          i = 1;
        }
        
        if(Eror == 0) LecAnt = Lec;
        else if(Eror == 1) Eror = 0;
      }

      // Vaciar variables correctas
      if(PaseTodo){
        HoraON = Numero1;
        MinON = Numero2;
        HoraOFF = Numero3;
        MinOFF = Numero4;
        EstFoco = 1;
        Menu = 0;
        Menu1 = 1;
      }

      // Volviendo al Menu principal
      Pase = true;
      PaseTodo = true;
      i = 0;
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Datos Correctos,");
      lcd.setCursor(0, 1);
      lcd.print("Hora Establecida");
      delay(2000);
      lcd.clear();
      break;
  }

  // Encender y apagar Foco
  if(EstFoco == 1){
    digitalWrite(Foco, LOW);
    
    if(fecha.hour() == HoraON && fecha.minute() == MinON){
      Menu1 = 2;
      EstFoco = 2;
    }
  }
  else if(EstFoco == 2){
    digitalWrite(Foco, HIGH);
    
    if(fecha.hour() == HoraOFF && fecha.minute() == MinOFF){
      Menu1 = 1;
      EstFoco = 1;
    }
  }

  // Actualizar Lectura anterior 
  if(Eror == 0) LecAnt = Lec;
  else if(Eror == 1) Eror = 0; 
  
}

//-------------------------------------------------------------------------------

// Seccion 4 - Funciones --------------------------------------------------------
// Funcion Para Establecer la Hora
void Hora(){
  // Fecha
  DateTime fecha = rtc.now();   // funcion que devuelve fecha y horario en formato
  
  // Establecer Hora
  lcd.setCursor(2, 0);
  lcd.print(fecha.hour());      // funcion que obtiene la hora de la fecha completa
  lcd.print(":");               // caracter dos puntos como separador
  lcd.print(fecha.minute());    // funcion que obtiene los minutos de la fecha completa
  lcd.print(":");               // caracter dos puntos como separador
  lcd.print(fecha.second());    // funcion que obtiene los segundos de la fecha completa
}

// Funcion Sin programacion
void SinProg(){
  lcd.setCursor(12,0);
  lcd.print("B:");
  Retros(14, 0);
  lcd.setCursor(1,1);
  lcd.print("Hora no Prog.");
}

// Funcion Encendido
void Encendido(){
  lcd.setCursor(12, 0);
  lcd.print("B:");
  Retros(14, 0);
  lcd.setCursor(0,1);
  lcd.print("Foco  ON:");

  // Estableciendo Hora
  lcd.setCursor(10, 1);
  lcd.print(HoraON);
  lcd.print(":");
  lcd.print(MinON);
}

// Funcion Apagado
void Apagado(){
  lcd.setCursor(12, 0);
  lcd.print("B:");
  Retros(14, 0);
  lcd.setCursor(0,1);
  lcd.print("Foco OFF:");

  // Estableciendo Hora
  lcd.setCursor(10, 1);
  lcd.print(HoraOFF);
  lcd.print(":");
  lcd.print(MinOFF);
}

// Funciones para programar Hora

//ProgHora1
void ProgHora1(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Indique Hora ON");
  lcd.setCursor(0,1);
  lcd.print("Hora:");

  //Flechas
  lcd.setCursor(9,1);
  lcd.print("A:");
  Enter(11, 1);
  lcd.setCursor(12,1);
  lcd.print("B:");
  Retros(14, 1);
}

//ProgHora2
void ProgHora2(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Indique Min. ON");
  lcd.setCursor(0,1);
  lcd.print("Minu:");

  //Flechas
  lcd.setCursor(9,1);
  lcd.print("A:");
  Enter(11, 1);
  lcd.setCursor(12,1);
  lcd.print("B:");
  Retros(14, 1);
}

//ProgHora3
void ProgHora3(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Indique Hora OFF");
  lcd.setCursor(0,1);
  lcd.print("Hora:");

  //Flechas
  lcd.setCursor(9,1);
  lcd.print("A:");
  Enter(11, 1);
  lcd.setCursor(12,1);
  lcd.print("B:");
  Retros(14, 1);
}

//ProgHora4
void ProgHora4(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Indique Min. OFF");
  lcd.setCursor(0,1);
  lcd.print("Minu:");

  //Flechas
  lcd.setCursor(9,1);
  lcd.print("A:");
  Enter(11, 1);
  lcd.setCursor(12,1);
  lcd.print("B:");
  Retros(14, 1);
}

// Funcion Error
void Error(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Variable Erronea");
  lcd.setCursor(0,1);
  lcd.print("Por favor Repita");
  delay(1000);
  lcd.clear();
}

//Definiciones Pixel Art

// Retroceder
void Retros(int a, int b){
  //Creacion de Caracteres 
  lcd.createChar(2, letra2);
  lcd.createChar(3, letra3);

  //Frame
  lcd.setCursor(a, b);
  lcd.write(2);
  lcd.write(3);
}

// Enter
void Enter(int a, int b){
  //Creacion de Caracteres 
  lcd.createChar(4, letra4);

  //Frame
  lcd.setCursor(a, b);
  lcd.write(4);
}
  
//-------------------------------------------------------------------------------
