#include <LiquidCrystal.h>
LiquidCrystal lcd(12,11,5,4,3,2);

void setup(){
  lcd.begin(16,2);
  lcd.setCursor(0,0);
  lcd.print("Welcome");
  lcd.setCursor(2,1);
  lcd.print("Team - MAS");
  delay(1000);
}

void loop(){
 // for(int positionCounter =0; positionCounter <=16; positionCounter ++){
 //   lcd.scrollDisplayLeft();
 //   delay(500);
 // }
}
