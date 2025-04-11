# Dart Asynchronous Programming

This repository contains various Dart asynchronous programming exercises for the Holberton School Web Dart project.

## Files and Functions

### 0. Users Count
- **File**: `0-users_count.dart`
- **Description**: Function that prints the number of users by calling an asynchronous API.
- **Prototype**: `Future<void> usersCount()`

### 1. Get User ID
- **File**: `1-get_user_id.dart`
- **Description**: Function that returns a future string representing a user's ID extracted from JSON.
- **Prototype**: `Future<String> getUserId()`

### 2. Get User
- **File**: `2-get_user.dart`
- **Description**: Function that prints user data with error handling using try-catch.
- **Prototype**: `Future<void> getUser()`

### 3. Greet User
- **File**: `3-greet_user.dart`
- **Description**: Contains two functions - one to greet a user and another to handle user login.
- **Prototypes**:
  - `Future<String> greetUser()`
  - `Future<String> loginUser()`

### 4. Calculate Total
- **File**: `4-get_sum.dart`
- **Description**: Function that calculates the total price of items for a certain user.
- **Prototype**: `Future<double> calculateTotal()`

### 5. Rick and Morty Characters
- **Files**: 
  - `rick_and_morty.dart`: Function to fetch and print Rick and Morty characters
  - `pubspec.yaml`: Package configuration file with HTTP dependency

## Concepts Covered
- Asynchronous programming with `async` and `await`
- Futures and Future handling
- Error handling with try-catch
- HTTP requests
- JSON parsing
- API interactions

## Usage

Each file can be run using the corresponding main file:

```bash
dart 0-main.dart
```

For the Rick and Morty API exercise, you'll need to first run:

```bash
dart pub get
```

## Author
[BM]