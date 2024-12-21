import 'example.dart';

void main() {
  Dog myDog = Dog('Buddy');

  // استدعاء دوال من الكلاس الأب
  myDog.eat(); // Buddy is eating.
  myDog.sleep(); // Buddy is sleeping.

  // استدعاء دالة من الكلاس الابن
  myDog.bark(); // Buddy is barking.
}
