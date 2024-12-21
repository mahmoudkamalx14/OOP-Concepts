class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }

  void sleep() {
    print('$name is sleeping.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print('$name is barking.');
  }
}
