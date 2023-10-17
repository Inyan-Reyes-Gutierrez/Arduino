/*-------------------------------------------------------------------------------
  Practica numero 20 - Receptor y Emisor con NRF24I01
  Desc: Implementando dos Sistemas gemelos, uno con una tarjeta de desarrollo 
  Arduino NANO y otro con una tarjeta PROMICRO, un LCD 1602 con una interfaz I2C, 
  un KEYPAD 4x4 y el Transceptor NRF24I01, en el cual se establecerá una 
  comunicación entre estos dos sistemas habiendo una retroalimentación del 
  operador en los LCD y con la capacidad de este mismo para mandar mensajes en 
  ambos sistemas.
---------------------------------------------------------------------------------
  Implementing two twin systems, one with an Arduino NANO development board and 
  the other with a PROMICRO board, a 1602 LCD with an I2C interface, a 4x4 KEYPAD 
  and the NRF24I01 Transceiver, in which a communication between these two systems 
  will be established having a feedback from the operator on the LCDs and with the 
  ability of this same to send messages in both systems.

  Atzin Inyan Reyes Gutiérrez.
-------------------------------------------------------------------------------*/

// Seccion 1 - Definicion de variables y objetos --------------------------------

//United module, for ProMicro arduino
#include <LiquidCrystal_I2C.h>  // Libreria LCD 1602 I2C
#include <Keypad.h>             // Libreria Keypad
#include <SPI.h>                // Libreria Manejo SPI
#include <Wire.h>               // Libreria Manejo I2C
#include <RH_NRF24.h> // incluye la seccion NRF24 de la libreria RadioHead 

// Definicion de Filas y Columnas
#define FILAS 4
#define COLUMNAS 4

// Definicion de la Comunicacion I2C
LiquidCrystal_I2C lcd(0x27,16,2); // dependiendo del fabricante del LCD el codigo 0x27 puede cambiar
                                  // 0x3F , 0x20 , 0x38 ,

RH_NRF24 nrf24(A0, 10);   // crea objeto con valores por defecto para bus SPI
      // y pin digital numero 8 para CE
	  
// Matriz de Varavteres del Teclados
char keys [FILAS][COLUMNAS] = {
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};

// Definicion de los pines de entrada
byte pinFilas [FILAS] = {4, 5, 6, 7};
byte pinColumnas [COLUMNAS] = {A2, A3, 8, 9};

// Definicion del KEYPAD
Keypad Tec = Keypad(makeKeymap (keys), pinFilas, pinColumnas, FILAS, COLUMNAS);

// Variables
int desp = 0;   // Desplazamiento escribir.
//char lecDeft;   // Lectura Inicial            // No es tan necesario
//char letra;     // Letra a imprimir           
char lec = ' '; // lectura constante
uint8_t content[20]; //almacena texto              // Cambiar nombre conten

//-------------------------------------------------------------------------------

// Seccion 2 - Configuracion del arduino ----------------------------------------

void setup() {
  // Iniciacion LCD
  lcd.init();
  lcd.backlight();
  lcd.clear();  
  
  
  //Primera Lectura de Control
  //  lecDeft = Tec.getKey();
  
  lcd.setCursor(0,1);
  if (!nrf24.init()){    // si falla inicializacion de modulo muestra texto
    lcd.print("1F de ini");
    while(1);
  }
  
  lcd.setCursor(1,1);
  if (!nrf24.setChannel(2)){ // si falla establecer canal muestra texto
    lcd.print("2F en est canal");
    while(1);
  }
  
  lcd.setCursor(2,1);
  if (!nrf24.setRF(RH_NRF24::DataRate250kbps, RH_NRF24::TransmitPower0dBm)){ // si falla opciones 
    lcd.print("3F en opt RF");             // RF muestra texto
    while(1);
  }
    
  delay(2000);
}

//-------------------------------------------------------------------------------

// Seccion 3 - Loob Infinito ----------------------------------------------------

void loop()
{
//The library detect when a button of the keypad is press 
lec=Tec.getKey();//Detection of a button pressed

// Loop{
// Lec
// test constantly if there is new data  available to send
	if (nrf24.available())      // si hay informacion disponible
  {
    uint8_t buf[RH_NRF24_MAX_MESSAGE_LEN];  // buffer con longitud maxima de 32 bytes
    uint8_t len = sizeof(buf);      // obtiene longitud de la cadena    
    if (nrf24.recv(buf, &len))      // si hay informacion valida en el buffer
    {
       // Recordar l
      lcd.setCursor(0,1);
      lcd.print("                ");
      lcd.setCursor(0,1);
      lcd.print("R:");   // muestra texto
      lcd.setCursor(2,1);
      lcd.print((char*)buf);   // muestra contenido del buffer
    }
    else          // si falla la recepcion
    {
      lcd.setCursor(4,1); // renglon
      Serial.print("4F en rec"); // muestra texto
      while(1);
    }
  }
  
  //button pressed
	if(lec){
    if(lec=='#')//tecla de envio
    {//send the data
      nrf24.send(content, sizeof(content));   // envia el texto
      nrf24.waitPacketSent();     // espera hasta realizado el envio 
      desp=0;// clean the counter 
      
      //clean the first line
      lcd.setCursor(0,0);
      lcd.print("                "); 

      // Vaciado del Vector
      for (int i=0; i < 20; i++) {
       content[i] = ' ';
      }
    }
    else //valid digits
    {
      content[desp]=lec;//guarda tecla en el vector
      lcd.setCursor(desp,0);
      lcd.print(lec); //--- Mensaje a desplegar
      desp++;
    }
	}
}

//-------------------------------------------------------------------------------
  
// Referencia Basura	
// If (LEC)
// { ()
//  if(lec == "#")
//    ¨{ enviar conten} desp = 0;
//    else
//  conted[desp] = lec
// }
// delay(10)
