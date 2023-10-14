int Led = 3;
int Ent = 2;
int Val = 0;

void setup() {
  pinMode (Led, OUTPUT);
  pinMode (Ent, INPUT);
}

void loop() {
  Val = digitalRead (Ent);
  digitalWrite (Led, Val);
}
