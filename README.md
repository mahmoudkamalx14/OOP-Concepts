# Object-Oriented Programming (OOP)

This document explains the concepts of Object-Oriented Programming (OOP) in Dart with examples to help you understand its components and their usage.

---

## 1. **Class (الفئة)**

A class is the blueprint or template used to create objects. It defines properties (attributes) and behaviors (methods) that the objects will have.

### Syntax:

```dart
class ClassName {
  // Properties
  // Methods
}
```

### Example:

```dart
class Person {
  String name = '';
  int age = 0;

  void speak() {
    print('$name is speaking.');
  }
}
```

---

## 2. **Object (الكائن)**

An object is an instance of a class. It is used to access the properties and methods defined in the class.

### Syntax:

```dart
ClassName objectName = ClassName();
```

### Example:

```dart
void main() {
  Person person1 = Person();
  person1.name = 'Mahmoud';
  person1.age = 25;
  person1.speak(); // Output: Mahmoud is speaking.
}
```

---

## 3. **Encapsulation (التغليف)**

Encapsulation is the concept of restricting access to certain details of an object and exposing only the necessary parts. This can be achieved using private properties (prefix `_`) and public getters and setters.

### Example:

```dart
class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance; // Getter
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(100.0);
  print(account.balance); // Output: 100.0
}
```

---

## 4. **Inheritance (الوراثة)**

Inheritance allows a class (child) to inherit properties and methods from another class (parent), enabling code reuse.

### Syntax:

```dart
class ChildClass extends ParentClass {
  // Additional properties and methods
}
```

### Example:

```dart
class Animal {
  void eat() => print('Eating...');
}

class Dog extends Animal {
  void bark() => print('Barking...');
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Eating...
  dog.bark(); // Output: Barking...
}
```

---

## 5. **Polymorphism (تعدد الأشكال)**

Polymorphism allows methods in a parent class to be overridden in a child class, providing different implementations based on the object type.

### Syntax:

```dart
@override
void methodName() {
  // New implementation
}
```

### Example:

```dart
class Animal {
  void sound() => print('Animal makes a sound.');
}

class Cat extends Animal {
  @override
  void sound() => print('Meow');
}

void main() {
  Animal animal = Animal();
  animal.sound(); // Output: Animal makes a sound.

  Animal cat = Cat();
  cat.sound(); // Output: Meow
}
```

---

## 6. **Abstraction (التجريد)**

Abstraction focuses on defining what an object does rather than how it does it. This can be implemented using abstract classes or interfaces.

### Syntax:

```dart
abstract class ClassName {
  void methodName(); // Abstract method
}
```

### Example:

```dart
abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  @override
  void draw() => print('Drawing a Circle');
}

void main() {
  Shape shape = Circle();
  shape.draw(); // Output: Drawing a Circle
}
```

---

## Summary of OOP Concepts:

| Concept           | Description                                                                            |
| ----------------- | -------------------------------------------------------------------------------------- |
| **Class**         | Blueprint for creating objects, containing properties and methods.                     |
| **Object**        | Instance of a class used to access its members.                                        |
| **Encapsulation** | Restricts access to object details and provides controlled access via getters/setters. |
| **Inheritance**   | Enables a class to inherit properties and methods from another class.                  |
| **Polymorphism**  | Allows methods to behave differently based on the object.                              |
| **Abstraction**   | Focuses on defining behaviors, hiding implementation details.                          |

---

With these foundational concepts, you can build robust and reusable code in Dart using OOP principles!

