mixin Flyable {
  void fly() {
    print("Flying...");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming...");
  }
}

class Duck with Flyable, Swimmable {}

void main() {
  Duck duck = Duck();
  duck.fly(); // output: Flying...
  duck.swim(); // output: Swimming...
}
