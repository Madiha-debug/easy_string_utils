# easy_string_utils

A simple and practical Dart extension package that adds a collection of commonly used string utility methods to make string manipulation easier and cleaner in Flutter and Dart projects.

## Features

- Convert strings to Title Case, Camel Case, and capitalized forms
- Remove whitespace, special characters, or extract only digits
- Validate email format and check if strings are numeric
- Reverse strings, mask parts of strings (e.g., hide phone digits)
- Extract initials from names and count words
- Check palindromes and truncate strings with ellipsis
- Convert strings to URL-friendly slugs

## Getting started

Add this package to your project by adding the following to your `pubspec.yaml`:


```yaml

dependencies:
  easy_string_utils: ^1.0.0
  
```

## Run

flutter pub get

## Usage

Import the package and start using the utility extensions:

```dart

import 'package:easy_string_utils/easy_string_utils.dart';

void main() {
  final text = 'hello world';

  print(text.toTitleCase());               // Hello World
  print(text.toCamelCase());               // helloWorld
  print('test@example.com'.isValidEmail()); // true
  print('1234567890'.mask(start: 3, end: 7)); // 123****890
  print('John Doe'.initials());            // JD
  print('Racecar'.isPalindrome());         // true
}

```
