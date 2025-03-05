# Dart Classes and Object-Oriented Programming (OOP)

Dart is an object-oriented language that supports key OOP features like classes, interfaces, and encapsulation. This guide covers the fundamentals of classes in Dart.

## Table of Contents
- [Declaring a Class](#declaring-a-class)
- [Creating an Instance](#creating-an-instance)
- [Accessing Attributes and Functions](#accessing-attributes-and-functions)
- [Constructors](#constructors)
  - [Default Constructor](#default-constructor)
  - [Named Constructor](#named-constructor)
  - [The `this` Keyword](#the-this-keyword)
- [Getters and Setters](#getters-and-setters)
- [Class Inheritance](#class-inheritance)
  - [Types of Inheritance](#types-of-inheritance)
  - [Method Overriding](#method-overriding)
- [Static Members](#static-members)
- [The `super` Keyword](#the-super-keyword)

---

## Declaring a Class
A class is a blueprint for creating objects. Use the `class` keyword to declare a class:
```dart
class Car {  
  // Field
  String engine = "E1001";  
   
  // Method
  void disp() { 
    print(engine); 
  } 
}