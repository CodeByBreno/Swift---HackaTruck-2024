#include <WiFi.h>

#define pinoUmidadeAnalog A0
#define pinoUmidadeDigital 1
#define ledVermelho 5
#define ledVerde 6

const char* ssid = "HackaTruck";
const char* password =  "????";

int valorUmidade = 0;
int valorUmidadeNormalizado = 0;
int valorUmidadeDigital = 0;

void setupPins() {
  pinMode(pinoUmidadeAnalog, INPUT);
  pinMode(pinoUmidadeDigital, INPUT);
  pinMode(ledVermelho, OUTPUT);
  pinMode(ledVerde, OUTPUT);
}

void setup(){
  Serial.begin(115200);
  setupPins();

  WiFi.begin(ssid, password);

	Serial.println("Connecting");
  while(WiFi.status() != WL_CONNECTED){
    delay(500);
    Serial.print(".");
    Serial.print(WiFi.localIP());
  }
  
  Serial.println("Connected!");
}

void loop(){
  valorUmidade = analogRead(umidadeAnalogica);
  valorUmidadeNormalizado = map(valorUmidade, 1023, 315, 0, 100);

  Serial.print("Umidade detectada: ");
  Serial.println(valorUmidadeNormalizado);

  valorUmidadeDigital = digitalRead(pinoUmidadeDigital);  
  if (valorUmidadeDigital == 0) {
    Serial.prinln("Status: Solo úmido");
    digitalWrite(ledVermelho, LOW);
    digitalWrite(ledVerde, HIGH);
  } else {
    Serial.prinln("Status: Solo seco");
    digitalWrite(ledVermelho, HIGH);
    digitalWrite(ledVerde, LOW);
  }

}