// ===========================================
// Dual Quadrature Encoder Test (x4 decoding)
// Encoder A: A->D3(INT1), B->D4(PCINT)
// Encoder B: A->D2(INT0), B->D5(PCINT)
// ===========================================
#include <PinChangeInterrupt.h>

// --- Encoder A pins ---
const uint8_t ENC_A_A_PIN = 3;   // INT1
const uint8_t ENC_A_B_PIN = 4;   // PCINT

// --- Encoder B pins ---
const uint8_t ENC_B_A_PIN = 2;   // INT0
const uint8_t ENC_B_B_PIN = 5;   // PCINT

// --- Encoder variables ---
volatile long encoderA_Count = 0;
volatile long encoderB_Count = 0;

volatile uint8_t encoderA_PrevState = 0;
volatile uint8_t encoderB_PrevState = 0;

// --- Lookup table for quadrature decoding ---
const int8_t quadTable[16] = {
  0, +1, -1,  0,
 -1,  0,  0, +1,
 +1,  0,  0, -1,
  0, -1, +1,  0
};

// Encoder specs
const int PPR = 1000;
const int CPR = PPR * 2;

// ===========================
// Encoder A ISR
// ===========================
inline void processEncoderA() {
  uint8_t A = digitalRead(ENC_A_A_PIN);
  uint8_t B = digitalRead(ENC_A_B_PIN);
  uint8_t curr = (A << 1) | B;

  uint8_t idx = (encoderA_PrevState << 2) | curr;
  encoderA_Count += quadTable[idx];
  encoderA_PrevState = curr;
}

void ISR_EncoderA_A() { processEncoderA(); }  // A pin interrupt
void ISR_EncoderA_B() { processEncoderA(); }  // B pin PCINT

// ===========================
// Encoder B ISR
// ===========================
inline void processEncoderB() {
  uint8_t A = digitalRead(ENC_B_A_PIN);
  uint8_t B = digitalRead(ENC_B_B_PIN);
  uint8_t curr = (A << 1) | B;

  uint8_t idx = (encoderB_PrevState << 2) | curr;
  encoderB_Count += quadTable[idx];
  encoderB_PrevState = curr;
}

void ISR_EncoderB_A() { processEncoderB(); }  // A pin interrupt
void ISR_EncoderB_B() { processEncoderB(); }  // B pin PCINT

// ===========================
// Setup
// ===========================
void setup() {
  Serial.begin(115200);
  while (!Serial);

  pinMode(ENC_A_A_PIN, INPUT_PULLUP);
  pinMode(ENC_A_B_PIN, INPUT_PULLUP);
  pinMode(ENC_B_A_PIN, INPUT_PULLUP);
  pinMode(ENC_B_B_PIN, INPUT_PULLUP);

  // Initialize previous states
  encoderA_PrevState = (digitalRead(ENC_A_A_PIN) << 1) | digitalRead(ENC_A_B_PIN);
  encoderB_PrevState = (digitalRead(ENC_B_A_PIN) << 1) | digitalRead(ENC_B_B_PIN);

  // --- Attach interrupts ---
  attachInterrupt(digitalPinToInterrupt(ENC_A_A_PIN), ISR_EncoderA_A, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENC_B_A_PIN), ISR_EncoderB_A, CHANGE);

  attachPinChangeInterrupt(digitalPinToPinChangeInterrupt(ENC_A_B_PIN), ISR_EncoderA_B, CHANGE);
  attachPinChangeInterrupt(digitalPinToPinChangeInterrupt(ENC_B_B_PIN), ISR_EncoderB_B, CHANGE);

  Serial.println("✅ Dual Encoder Test Initialized");
}

// ===========================
// Loop
// ===========================
void loop() {
  static long lastA = 0;
  static long lastB = 0;

  noInterrupts();
  long countA = encoderA_Count;
  long countB = encoderB_Count;
  interrupts();

  if (countA != lastA || countB != lastB) {
    float angleA = (countA * 360.0) / CPR;
    float angleB = (countB * 360.0) / CPR;

    Serial.print("EncA Count: ");
    Serial.print(countA);
    Serial.print("  Angle: ");
    Serial.print(angleA, 2);
    Serial.print("   |   EncB Count: ");
    Serial.print(countB);
    Serial.print("  Angle: ");
    Serial.println(angleB, 2);

    lastA = countA;
    lastB = countB;
  }
}
