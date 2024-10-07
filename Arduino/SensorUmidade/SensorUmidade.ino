#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

#define pinoUmidadeAnalog A0
#define pinoUmidadeDigital 5
#define ledVermelho 0
#define ledVerde 4

WiFiClient client;
HTTPClient httpClient;

const char* ssid = "HackaTruckIoT";
const char* password =  "iothacka";
const char *URL = "http://127.0.0.1:1880/humid";

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
  valorUmidade = analogRead(pinoUmidadeAnalog);
  valorUmidadeNormalizado = map(valorUmidade, 1023, 315, 0, 100);

  Serial.print("Umidade detectada: ");
  Serial.println(valorUmidadeNormalizado);

  if (valorUmidadeNormalizado > 50) {
    Serial.println("Status: Solo úmido");
    digitalWrite(ledVermelho, LOW);
    digitalWrite(ledVerde, HIGH);
  } else {
    Serial.println("Status: Solo seco");
    digitalWrite(ledVermelho, HIGH);
    digitalWrite(ledVerde, LOW);
  }

  httpClient.begin(client, URL);
  httpClient.addHeader("Content-Type", "application/x-www-form-urlencoded");
  httpClient.POST(String(valorUmidadeNormalizado));
  httpClient.end();

  delay(5000);
}