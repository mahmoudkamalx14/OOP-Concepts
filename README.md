# Object-Oriented Programming (OOP) in Dart

This document explains the concepts of Object-Oriented Programming (OOP) in Dart with detailed explanations and examples to help you understand its components and their usage.

---

## **Class (الفئة)**
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

---

## **Object (الكائن)**
An **object** is an instance of a class. It is a concrete realization of the class template, with actual data and behaviors.

### Example:
```dart
void main() {
  Person person1 = Person();
  person1.name = 'Mahmoud';
  person1.age = 25;
  person1.speak(); // Output: Mahmoud is speaking.
}


---

## 1. **Encapsulation (التغليف)**
**Encapsulation** is the concept of bundling data (properties) and methods that operate on the data within one unit (class). It also restricts direct access to some components using access modifiers.

### Key Points:
- Properties can be made **private** by prefixing them with `_`.
- Use **getters** and **setters** to control access to private properties.

---

## 2. **Inheritance (الوراثة)**
**Inheritance** allows a class (child) to acquire properties and methods of another class (parent). This promotes code reuse and a hierarchical class structure.

---

## 3. **Polymorphism (تعدد الأشكال)**
**Polymorphism** means "many forms". It allows methods in a parent class to be overridden by child classes, enabling objects to behave differently based on their type.

---

## 4. **Abstraction (التجريد)**
**Abstraction** focuses on what an object does rather than how it does it. It hides implementation details and shows only the essential features.

### Key Points:
- **Abstract classes** cannot be instantiated.
- Abstract methods must be implemented in derived classes.


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

