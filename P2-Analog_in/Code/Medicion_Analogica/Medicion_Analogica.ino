/* ------------------------------------------------------------ */

/*  Atzin Inyan Reyes Gutierrez */

/* ------------------------------------------------------------ */

void setup() {
// Se Inicia la comunicacion en serie
Serial.begin(9600);
}

void loop() { 
// Se realiza la medicion de la entrada analogica
int ValorEnt = analogRead(A6);

// Conversion de entrada a valor de 0 a 5 V
float Voltaje = ValorEnt * (5.0 / 1023.0);

// Impresion del viltaje
Serial.println(Voltaje);
}
