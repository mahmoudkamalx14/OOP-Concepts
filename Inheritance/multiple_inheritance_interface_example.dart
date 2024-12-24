abstract class Engine {
  void startEngine();
  void stopEngine();
}

abstract class Flyable {
  void fly();
}

class Car implements Engine {
  @override
  void startEngine() {
    print("تم تشغيل محرك السيارة.");
  }

  @override
  void stopEngine() {
    print("تم إيقاف محرك السيارة.");
  }

  void drive() {
    print("السيارة تتحرك...");
  }
}

class Plane implements Engine, Flyable {
  @override
  void startEngine() {
    print("تم تشغيل محرك الطائرة.");
  }

  @override
  void stopEngine() {
    print("تم إيقاف محرك الطائرة.");
  }

  @override
  void fly() {
    print("الطائرة تحلق...");
  }
}

void main() {
  Car car = Car();
  car.startEngine(); // output: تم تشغيل محرك السيارة.
  car.drive(); // output: السيارة تتحرك...
  car.stopEngine(); // output: تم إيقاف محرك السيارة.

  print('---'); // separator

  Plane plane = Plane();
  plane.startEngine(); // output: تم تشغيل محرك الطائرة.
  plane.fly(); // output: الطائرة تحلق...
  plane.stopEngine(); // output: تم إيقاف محرك الطائرة.
}
