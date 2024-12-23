class Engine {
  void start() {
    print("Engine started.");
  }
}

class Car {
  final Engine engine; // السيارة تحتوي على محرك

  Car(this.engine);

  void drive() {
    engine.start(); // تشغيل المحرك
    print("Car is driving.");
  }
}

void main() {
  Engine engine = Engine(); // إنشاء محرك
  Car car = Car(engine); // إنشاء سيارة تحتوي على هذا المحرك

  car.drive();
  // Output:
  // Engine started.
  // Car is driving.
}
