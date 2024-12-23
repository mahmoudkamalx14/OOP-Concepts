class Human {
  String? name;
  int? age;
  double? height;
  double? weight;

  void eat() {
    print("Human is eating");
  }
}

class Boy extends Human {}

class Girl extends Human {}

void main() {
  Boy boy = Boy();
  boy.name = "Ahmed";
  print(boy.name);
  boy.eat();
  // Output:
  // Ahmed
  // Human is eating

  Girl girl = Girl();
  girl.name = "Nada";
  print(girl.name);
  girl.eat();
  // Output:
  // Nada
  // Human is eating
}
