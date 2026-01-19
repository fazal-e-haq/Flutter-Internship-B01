# Dart Programming Fundamentals – Week 1

**Flutter Internship Program – Flutter-Internship-B01**

This repository documents the completion of all Week 1 Dart learning tasks, including syntax fundamentals, collections, object-oriented programming, and asynchronous programming.

---

## Project Structure

```
dart_basics/
│── main.dart
│── dart_collections.dart
│── dart_oop.dart
│── dart_async.dart
│── README.md
```

---

## Completed Tasks

### Task 1.1 – Dart Setup & Basic Syntax (main.dart)

* Variables: `var`, `final`, `const`
* Data Types: `int`, `double`, `String`, `bool`
* Control Flow: `if-else`, `switch`, `for`, `while`
* Functions:

  * `sum(int a, int b)`
  * Recursive `factorial(int n)`
  * `isPrime(int number)`

---

### Task 1.2 – Dart Collections & Higher-Order Functions (dart_collections.dart)

* Collections: `List`, `Set`, `Map`
* Higher-order functions: `map()`, `where()`, `reduce()`, `forEach()`
* Student Management System:

  * Store students in `List<Map<String, dynamic>>`
  * Sort by marks (descending)
  * Filter students with marks > 75
  * Search student by name
  * Print formatted output

---

### Task 1.3 – Object-Oriented Programming (dart_oop.dart)

* Encapsulation with private variables and getters/setters
* Named constructor `User.withDetails()`
* Inheritance: `Admin extends User`
* Polymorphism by overriding `toString()`
* Abstraction using `Animal` class with `Dog` and `Cat` implementations
* Shopping Cart system with `Product` and `ShoppingCart` classes

---

### Task 1.4 – Asynchronous Programming (dart_async.dart)

* Futures and `async-await`
* Error handling using `try-catch`
* Parallel execution with `Future.wait()`
* Streams using `Stream`, `StreamController`, and transformations
* Real-time counter stream with error handling

---

## How to Run

```bash
dart main.dart
dart dart_collections.dart
dart dart_oop.dart
dart dart_async.dart
```

---

