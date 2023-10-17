//United module, for nano arduino
#include <LiquidCrystal_I2C.h>  // Libreria LCD 1602 I2C
#include <Keypad.h>             // Libreria Keypad
#include <SPI.h>                // Libreria Manejo SPI
#include <Wire.h>               // Libreria Manejo I2C
#include <RH_NRF24.h> // incluye la seccion NRF24 de la libreria RadioHead 

// Recordar que en este LCD se Necesita un desplazamiento.
#define despLCD 5




//lcd screen init declaration

// Definicion de la Comunicacion I2C
LiquidCrystal_I2C lcd(0x27,16,2); // dependiendo del fabricante del LCD el codigo 0x27 puede cambiar
                                  // 0x3F , 0x20 , 0x38 ,

RH_NRF24 nrf24(8, 10);   // crea objeto con valores por defecto para bus SPI
      // y pin digital numero 8 para CE
	  
/ Matriz de Varavteres del Teclados
char keys [FILAS][COLUMNAS] = {
  {'1', '2', '3', 'A'},
  {'4', '5', '6', 'B'},
  {'7', '8', '9', 'C'},
  {'*', '0', '#', 'D'}
};

// Definicion de los pines de entrada
byte pinFilas [FILAS] = {A0, A1, D7, D6};
byte pinColumnas [COLUMNAS] = {D5, D4, D3, D2};

// Definicion del KEYPAD
Keypad Tec = Keypad(makeKeymap (keys), pinFilas, pinColumnas, FILAS, COLUMNAS);

// Variables
int desp = 0;   // Desplazamiento escribir.
char lecDeft;   // Lectura Inicial
char letra;     // Letra a imprimir
char lec = ' '; // lectura constante
uint8_t data[];[ //almacena texto	  

void setup() {
  // Iniciacion LCD
  lcd.init();
  lcd.backlight();
  lcd.clear();  
  
    //Primera Lectura de Control
  lecDeft = Tec.getKey();
  

  
   lcd.setCursor(0,1);
  if (!nrf24.init())    // si falla inicializacion de modulo muestra texto
    lcd.print("1F de ini");
  
  lcd.setCursor(1,1);
  if (!nrf24.setChannel(2)) // si falla establecer canal muestra texto
    lcd.print("2F en est canal");
  
  lcd.setCursor(2,1);
  if (!nrf24.setRF(RH_NRF24::DataRate250kbps, RH_NRF24::TransmitPower0dBm)) // si falla opciones 
    lcd.print("3F en opt RF");             // RF muestra texto

  delay(2000);
  
  
}



void loop()
{

///////////////////////////////////////EMISOR/////////////////////////////
 if (nrf24.available())      // si hay informacion disponible
  {  
    uint8_t buf[RH_NRF24_MAX_MESSAGE_LEN];  // buffer con longitud maxima de 32 bytes
    uint8_t len = sizeof(buf);      // obtiene longitud de la cadena
    if (nrf24.recv(buf, &len))      // si hay informacion valida en el buffer
    {
      lcd.setCursor(0 + despLCD, 1);// segundo renglon
      lcd.print("                ");
      lcd.setCursor(0 + despLCD, 1);
      lcd.print("R:");   // muestra texto
      lcd.setCursor(2 + despLCD, 1);
      lcd.print((char*)buf);   // muestra contenido del buffer en segundo renglon

//////////////////////TRANSMISION////////////////////////////////////////////////
//lectura de inicio
		lec=Tec.getKey();

		if(lec=="#")//tecla de envio
		{
			desp=0;// desplazamiento 0
			lcd.clear();//limpia pantalla
			delay(500);
			nrf24.send(data, sizeof(data));       // envia texto
			nrf24.waitPacketSent(); 
			lcd.setCursor(0 + despLCD,0);
			lcd.print("respuesta env"); // muestra texto
		}
		else //digitos diferentes
		{
			data[desp]=lec;//guarda tecla en el vector
			lcd.setCursor(desp,0);
			lcd.print(lec); //--- Mensaje a desplegar
			desp++;
		}
	}	
	else          // si falla la recepcion
    {
      lcd.setCursor(3 + despLCD,1);
      Serial.print("4F en rec"); // muestra texto
    }

}
