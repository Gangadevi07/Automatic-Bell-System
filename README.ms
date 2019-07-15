#include <Wire.h>
#include "RTClib.h"
#include <LiquidCrystal.h>
LiquidCrystal lcd(11, 10, 5, 4, 3, 2);
RTC_DS1307 RTC;
char daysOfTheWeek[7][12] = {"Sun", "Mon", "Tues", "Wed", "Thur", "Fri", "Sat"};
const int led = 8;
const int switchPin = 7;  
int var; 
int count=0;
 void setup () {
    Serial.begin(9600);
    Wire.begin();
    RTC.begin();
    lcd.begin(16, 2);
    pinMode(led, OUTPUT);
    pinMode(switchPin, INPUT);
  if (! RTC.isrunning()) {
   Serial.println("RTC is NOT running!");
   RTC.adjust(DateTime(__DATE__, __TIME__));
 }
}

void loop () {
  
      DateTime now = RTC.now();
    lcd.setCursor(0, 0);
    lcd.print(now.day(), DEC);
    lcd.print('/');
    lcd.print(now.month(), DEC);
    lcd.print('/');
    lcd.print(now.year(), DEC);
    lcd.print(' ');
    lcd.setCursor(0, 1);
     if (now.hour()<10)
    lcd.print('0');
    lcd.print(now.hour(), DEC);
    lcd.print(':');
     if (now.minute()<10)
    lcd.print('0');
    lcd.print(now.minute(), DEC);
    lcd.print(':');
    if (now.second()<10)
    lcd.print('0');
    lcd.print(now.second(), DEC);
    lcd.setCursor(12, 0);
     lcd.print(' ');
   lcd.print(daysOfTheWeek[now.dayOfTheWeek()]);
   if(daysOfTheWeek[now.dayOfTheWeek()]!=daysOfTheWeek[0] )
    var = digitalRead(switchPin);
    Serial.print(var);
   if(var==HIGH)
       {
       lcd.setCursor(9,1);
   lcd.print("MD:");
      lcd.print("NRML");
      
   if (now.hour() == 9 && now.minute() == 00 && now.second() <10 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 9 && now.minute() == 50 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 10 && now.minute() == 40 && now.second() <7)
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 10 && now.minute() == 50 && now.second() <10 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 11 && now.minute() == 40 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 12 && now.minute() == 30 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 13 && now.minute() == 30 && now.second() <10 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 14 && now.minute() == 20 && now.second() <7)
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 15 && now.minute() == 10 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 15 && now.minute() == 20 && now.second() <10 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 16 && now.minute() == 05 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
    else if(now.hour() == 16 && now.minute() == 50 && now.second() <10 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
        else
    {
      digitalWrite(led,LOW);
      if(count!=0)
      {
            count=0;
            lcd.begin(16, 2);
       }
    }
     }
   else
 {
   lcd.setCursor(9,1);
   lcd.print("MD:");
   delay(1000);
      lcd.print("EXAM");
   if (now.hour() == 9 && now.minute() == 50 && now.second() <5 )
    {
      digitalWrite(led,HIGH);
     count++;
    }
    else if(now.hour() == 10 && now.minute() == 00 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 10 && now.minute() == 30 && now.second() <5)
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 11 && now.minute() == 00 && now.second() <8 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 11 && now.minute() == 30 && now.second() <13 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 12 && now.minute() == 00 && now.second() <18 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 12 && now.minute() == 30 && now.second() <23 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
     digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 12 && now.minute() == 50 && now.second() <5)
    {
      digitalWrite(led,HIGH);
       count++;
    }
    else if(now.hour() == 13 && now.minute() == 00 && now.second() <28 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
        digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
   else if (now.hour() == 13 && now.minute() == 50 && now.second() <5 )
    {
      digitalWrite(led,HIGH);
     count++;
    }
    else if(now.hour() == 14 && now.minute() == 00 && now.second() <7 )
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 14 && now.minute() == 30 && now.second() <5)
    {
      digitalWrite(led,HIGH);
      count++;
    }
     else if(now.hour() == 15 && now.minute() == 00 && now.second() <8 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 15 && now.minute() == 30 && now.second() <13 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 16 && now.minute() == 00 && now.second() <18 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 16 && now.minute() == 30 && now.second() <23 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
     digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
    else if(now.hour() == 16 && now.minute() == 50 && now.second() <7)
    {
      digitalWrite(led,HIGH);
      
      count++;
    }
    else if(now.hour() == 17 && now.minute() == 00 && now.second() <28 )
    {
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
        digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      digitalWrite(led,LOW);
      delay(2000);
      digitalWrite(led,HIGH);
      delay(3000);
      count++;
    }
        else
    {
      digitalWrite(led,LOW);
      if(count!=0)
      {
            count=0;
            lcd.begin(16, 2);
       }
    } 
 }
}
