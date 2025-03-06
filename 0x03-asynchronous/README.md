# Asynchronous Programming in Dart: Futures, Async, and Await

![Dart](https://img.shields.io/badge/Dart-2.17%2B-blue)

Learn how to write asynchronous code using futures, `async`, and `await` in Dart. This tutorial includes examples, exercises, and best practices.

---

## Contents
1. [Why Asynchronous Code Matters](#why-asynchronous-code-matters)
2. [Example: Incorrectly Using an Asynchronous Function](#example-incorrectly-using-an-asynchronous-function)
3. [What is a Future?](#what-is-a-future)
4. [Working with Futures: Async and Await](#working-with-futures-async-and-await)
5. [Handling Errors](#handling-errors)
6. [Exercises](#exercises)
7. [Lints for Futures](#which-lints-work-for-futures)
8. [Next Steps](#whats-next)

---

## Why Asynchronous Code Matters
Asynchronous operations let your program work while waiting for other tasks to finish. Common use cases include:
- Fetching data over a network
- Writing to a database
- Reading files

These operations return results as **`Future`** objects (or **`Stream`** for multiple parts). Use `async` and `await` to manage asynchronous code.

---

## Example: Incorrectly Using an Asynchronous Function
**Problem**: The code below fails to print the user's order correctly. Why?

```dart
Future<String> fetchUserOrder() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Large Latte';
}

String createOrderMessage() {
  var order = fetchUserOrder(); // Returns a Future<String>, not the actual value.
  return 'Your order is: $order';
}

void main() {
  print(createOrderMessage()); 
  // Output: "Your order is: Instance of '_Future<String>'"
}