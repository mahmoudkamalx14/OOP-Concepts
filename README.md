# Object-Oriented Programming (OOP) in Dart

This document explains the concepts of Object-Oriented Programming (OOP) in Dart with detailed explanations and examples to help you understand its components and their usage.

---

## 1. **Class (الفئة)**
A **class** is the blueprint or template used to create objects. It defines the structure and behavior that the objects will have. A class can contain:
- **Properties**: Variables that hold data about the object.
- **Methods**: Functions that define the behavior of the object.

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
#### Explanation:
- **`String name`** and **`int age`** are properties that hold the name and age of a person.
- **`void speak()`** is a method that prints a message to the console.
- This class acts as a template for creating "Person" objects.

---

## 2. **Object (الكائن)**
An **object** is an instance of a class. It is a concrete realization of the class template, with actual data and behaviors.

### Example:
```dart
void main() {
  Person person1 = Person();
  person1.name = 'Mahmoud';
  person1.age = 25;
  person1.speak(); // Output: Mahmoud is speaking.
}
```
#### Explanation:
- **`Person person1 = Person();`** creates an object `person1` of the `Person` class.
- **`person1.name = 'Mahmoud';`** assigns the name property.
- **`person1.age = 25;`** assigns the age property.
- **`person1.speak();`** calls the `speak` method, which outputs the message.

---

## 3. **Encapsulation (التغليف)**
**Encapsulation** is the concept of bundling data (properties) and methods that operate on the data within one unit (class). It also restricts direct access to some components using access modifiers.

### Key Points:
- Properties can be made **private** by prefixing them with `_`.
- Use **getters** and **setters** to control access to private properties.

### Example:
```dart
class BankAccount {
  double _balance = 0.0; // Private property

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance; // Getter to access balance
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(100.0);
  print(account.balance); // Output: 100.0
}
```
#### Explanation:
- **`_balance`** is private, so it cannot be accessed directly from outside the class.
- The **`deposit`** method allows controlled modification of the balance.
- The **`get balance`** getter provides controlled access to the balance value.

---

## 4. **Inheritance (الوراثة)**
**Inheritance** allows a class (child) to acquire properties and methods of another class (parent). This promotes code reuse and a hierarchical class structure.

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
#### Explanation:
- **`class Dog extends Animal`**: The `Dog` class inherits the `eat` method from the `Animal` class.
- The `Dog` class has its own method, `bark`.
- The `dog` object can use both `eat` (inherited) and `bark` (defined in `Dog`).

---

## 5. **Polymorphism (تعدد الأشكال)**
**Polymorphism** means "many forms". It allows methods in a parent class to be overridden by child classes, enabling objects to behave differently based on their type.

### Example:
```dart
class Animal {
  void sound() => print('Animal makes a sound.');
}

class Cat extends Animal {
  @override
  void sound() => print('Meow');
}

class Dog extends Animal {
  @override
  void sound() => print('Bark');
}

void main() {
  Animal animal = Animal();
  animal.sound(); // Output: Animal makes a sound.

  Animal cat = Cat();
  cat.sound(); // Output: Meow

  Animal dog = Dog();
  dog.sound(); // Output: Bark
}
```
#### Explanation:
- The `sound` method is defined in the parent `Animal` class.
- Each child class (`Cat`, `Dog`) overrides the `sound` method to provide its own implementation.
- Polymorphism allows a single interface (`Animal`) to represent different behaviors.

---

## 6. **Abstraction (التجريد)**
**Abstraction** focuses on what an object does rather than how it does it. It hides implementation details and shows only the essential features.

### Key Points:
- **Abstract classes** cannot be instantiated.
- Abstract methods must be implemented in derived classes.

### Example:
```dart
abstract class Shape {
  void draw(); // Abstract method
}

class Circle extends Shape {
  @override
  void draw() => print('Drawing a Circle');
}

class Rectangle extends Shape {
  @override
  void draw() => print('Drawing a Rectangle');
}

void main() {
  Shape circle = Circle();
  circle.draw(); // Output: Drawing a Circle

  Shape rectangle = Rectangle();
  rectangle.draw(); // Output: Drawing a Rectangle
}
```
#### Explanation:
- **`abstract class Shape`**: Defines an abstract class with an abstract method `draw`.
- The `Circle` and `Rectangle` classes extend `Shape` and provide concrete implementations for `draw`.
- Abstract classes ensure that derived classes must implement specific methods.

---

## Summary of OOP Concepts:
| Concept         | Description                                                                 |
|-----------------|-----------------------------------------------------------------------------|
| **Class**       | Blueprint for creating objects, containing properties and methods.         |
| **Object**      | Instance of a class used to access its members.                            |
| **Encapsulation** | Restricts access to object details and provides controlled access via getters/setters. |
| **Inheritance** | Enables a class to inherit properties and methods from another class.      |
| **Polymorphism** | Allows methods to behave differently based on the object.                 |
| **Abstraction** | Focuses on defining behaviors, hiding implementation details.             |

---

With these foundational concepts and detailed examples, you can build robust and reusable code in Dart using OOP principles!

