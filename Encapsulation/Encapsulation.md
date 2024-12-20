# Encapsulation in Dart

## What is Encapsulation?

Encapsulation is one of the fundamental principles of **Object-Oriented Programming (OOP)**. It refers to bundling data (properties) and methods (functions) that operate on that data into a single unit, typically a **class**. The main idea is to hide the internal details of an object and provide controlled access through public methods.

## Key Concepts of Encapsulation:

1. **Data Hiding**: 
   - Restrict access to certain parts of an object to prevent accidental or malicious changes.

2. **Access Control**: 
   - Provide controlled access to properties using methods like **getters** and **setters**. This ensures that external code can interact with the object's data in a safe and controlled manner.

3. **Modularity**: 
   - Keep the internal implementation separate from the external interface, making the code easier to maintain and scale. Encapsulation allows developers to change the internal workings of a class without affecting the code that uses the class.

## Why Use Encapsulation?

1. **Security**: 
   - Protect sensitive data from being accessed or modified directly, which reduces the risk of errors and security issues.

2. **Flexibility**: 
   - Allow changes to the internal logic without affecting external code, making the system more adaptable to future changes.

3. **Code Readability**: 
   - Makes the code cleaner and easier to understand by hiding the complexity and providing a simple, clear interface to interact with.

## How to Implement Encapsulation in Dart

In **Dart**, encapsulation is implemented by:

1. **Making properties private** by prefixing their names with an underscore (`_`).
2. **Providing controlled access** to private properties using **getters** and **setters**.
