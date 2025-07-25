# easy_string_utils

A simple and practical Dart extension package that adds a collection of commonly used string utility methods to make string manipulation easier and cleaner in Flutter and Dart projects.

[![Pub Version](https://img.shields.io/pub/v/easy_string_utils.svg)](https://pub.dev/packages/easy_string_utils)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

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
  final email = 'test@example.com';
  final phone = '1234567890';
  final name = 'John Doe';
  final palindrome = 'Racecar';
  final specialChars = 'hello@world!';
  final mixed = 'The price is \$100!';
  final spaced = '   Hello     Flutter   ';
  final numeric = '42';
  final longText = 'This is a very long sentence that needs truncation.';
  final sample = 'My Blog Post!';
  final wordText = 'This is a sample sentence.';
  final fullText = 'Flutter is fun!';
  final spacedText = '  Hello  World  ';

  print(text.toTitleCase());                    // Hello World
  print(text.toCamelCase());                    // helloWorld
  print(email.isValidEmail());                  // true
  print(phone.mask(start: 3, end: 7));          // 123****890
  print(name.initials());                       // JD
  print(palindrome.isPalindrome());             // true
  print(specialChars.removeSpecialChars());     // helloworld
  print(mixed.onlyDigits());                    // 100
  print(numeric.isNumeric());                   // true
  print(text.reverse());                        // dlrow olleh
  print(text.capitalizeFirst());                // Hello world
  print(spaced.removeWhiteSpace());             // HelloFlutter
  print(wordText.wordCount());                  // 5
  print(longText.truncateWithEllipsis(20));     // This is a very long...
  print(sample.toSlug());                     // my-blog-post
  print(fullText.charCount()); // Output: 15
  print(spacedText.charCountWithoutSpaces()); // 10
  print('Uppercase count: ${sample.upperCaseCount()}'); // Output: 3
  print('Lowercase count: ${sample.lowerCaseCount()}'); // Output: 8
  print(' '.isNullOrEmpty()); //true
  print('User123'.removeDigits()); //User
  print('Hello'.toggleCase()); //hELLO
}

```
