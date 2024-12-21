# Understanding Inheritance in Dart

## What is Inheritance?
**Inheritance** is a key concept in Object-Oriented Programming (OOP) that allows a class (child) to inherit properties and methods from another class (parent). This helps in reusing code instead of rewriting it.

---

## Basics of Inheritance in Dart
- Use the `extends` keyword to make a class inherit from another class.

```dart
class Parent {
  void greet() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  void sayHello() {
    print('Hello from Child');
  }
}
```

---

## Key Points of Inheritance

### 1. Accessing Parent Class Properties and Methods
The child class can access any **public methods** or **properties** of the parent class.

```dart
class Parent {
  String name = 'Parent';

  void sayName() {
    print('My name is $name');
  }
}

class Child extends Parent {}

void main() {
  Child child = Child();
  child.sayName(); // My name is Parent
}
```

---

### 2. Using `super`
The `super` keyword is used to call methods or properties of the parent class from the child class.

```dart
class Parent {
  void sayHello() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  @override
  void sayHello() {
    super.sayHello(); // Calls the parent method
    print('Hello from Child');
  }
}

void main() {
  Child child = Child();
  child.sayHello();
  // Output:
  // Hello from Parent
  // Hello from Child
}
```

---

### 3. Method Overriding
The child class can redefine methods from the parent class using the `@override` annotation.

```dart
class Parent {
  void greet() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  @override
  void greet() {
    print('Hello from Child');
  }
}

void main() {
  Child child = Child();
  child.greet(); // Hello from Child
}
```

---

### 4. Multiple Inheritance with Mixins
Dart does not support multiple inheritance directly, but you can achieve it using **mixins**.

```dart
mixin Flyable {
  void fly() {
    print('I can fly!');
  }
}

mixin Swimable {
  void swim() {
    print('I can swim!');
  }
}

class Bird with Flyable, Swimable {}

void main() {
  Bird bird = Bird();
  bird.fly(); // I can fly!
  bird.swim(); // I can swim!
}
```

---

### 5. Constructors and Inheritance
If the parent class has a constructor, the child class must call it using `super`.

```dart
class Parent {
  String name;

  Parent(this.name);

  void displayName() {
    print('Name: $name');
  }
}

class Child extends Parent {
  int age;

  Child(String name, this.age) : super(name);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Child child = Child('Ali', 20);
  child.displayInfo(); // Name: Ali, Age: 20
}
```

---

### 6. Private Members
Properties or methods starting with `_` are private and cannot be accessed by the child class.

```dart
class Parent {
  String _privateProperty = 'Private';

  void _privateMethod() {
    print('This is private');
  }
}

class Child extends Parent {
  void showPrivate() {
    // _privateProperty; // Error: Cannot access private member
    // _privateMethod(); // Error: Cannot access private member
  }
}
```

---

### 7. Preventing Inheritance
To prevent a class from being inherited, use the `final` or `sealed` keyword.

```dart
final class Parent {
  void greet() {
    print('Hello');
  }
}

class Child extends Parent {} // Error: Cannot inherit from a final class
```

---

### 8. Polymorphism
The child class can be treated as if it is of the parent class type, a concept known as **Polymorphism**.

```dart
class Parent {
  void greet() {
    print('Hello from Parent');
  }
}

class Child extends Parent {
  @override
  void greet() {
    print('Hello from Child');
  }
}

void main() {
  Parent parent = Child(); // Parent type, but Child instance
  parent.greet(); // Hello from Child
}
```

---

## Summary
- **Inheritance** enables code reuse and extension.
- Use `super` to interact with the parent class.
- Override parent methods with `@override`.
- Use **mixins** for multiple inheritance.
- Constructors in child classes must call the parent constructor if one exists.
- Use `final` or `sealed` to restrict inheritance.
- Polymorphism allows treating child objects as parent types.

Inheritance is a powerful concept, but it should be used wisely to maintain code simplicity and avoid unnecessary complexity.
