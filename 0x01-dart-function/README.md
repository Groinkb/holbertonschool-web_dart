# Dart Functions

This repository contains various Dart function implementations for the Holberton School Web Dart project.

## Files and Functions

### 0. Hello Function
- **File**: `0-hellofunc.dart`
- **Description**: Function that accepts a string argument and prints a greeting.
- **Prototype**: `void helloFunction(String str)`

### 1. Concatenate Strings
- **File**: `1-concat_strings.dart`
- **Description**: Function that concatenates two strings with a space between them.
- **Prototype**: `String concatStr(String str1, String str2)`

### 2. Add/Sub
- **File**: `2-sumfunc.dart`
- **Description**: Three functions for addition, subtraction, and displaying results.
- **Prototypes**:
  - `int add(int a, int b)`
  - `int sub(int a, int b)`
  - `String showFunc(int a, int b)`

### 3. Factorial
- **File**: `3-factors.dart`
- **Description**: Recursive function to compute the factorial of a positive integer.
- **Prototype**: `int fact(int f)`

### 4. Outer Inner
- **File**: `4-outer_inner.dart`
- **Description**: Nested functions demonstrating scope and string manipulation.
- **Prototypes**:
  - `void outer(String name, String id)`
  - `String inner()`

### 5. Calculate Area
- **File**: `5-calculate-area.dart`
- **Description**: Function to calculate the area of a triangle.
- **Prototype**: `double calculateArea(double height, double base)`

### 6. Convert to Fahrenheit
- **File**: `6-convert-to-fahrenheit.dart`
- **Description**: Function that converts a list of Celsius temperatures to Fahrenheit.
- **Prototype**: `List<double> convertToF(List<double> temperaturesInC)`

### 7. Basketball Shots
- **File**: `7-basketball-shots.dart`
- **Description**: Function that calculates basketball scores and determines the winner.
- **Prototype**: `int whoWins(Map<String, int> teamA, Map<String, int> teamB)`

### 8. Longest Unique Substring
- **File**: `8-longest-unique-substring.dart`
- **Description**: Function to find the longest non-repeating substring.
- **Prototype**: `String longestUniqueSubstring(String str)`

### 9. Palindrome
- **File**: `9-palindrome.dart`
- **Description**: Function to check if a string is a palindrome.
- **Prototype**: `bool isPalindrome(String s)`

### 10. Longest Palindrome
- **File**: `10-longest-palindrome.dart`
- **Description**: Function to find the longest palindrome substring in a string.
- **Prototype**: `String longestPalindrome(String s)`

## Usage

Each file can be tested using the corresponding main file:

```bash
dart 0-main.dart
```

## Author
[BM]