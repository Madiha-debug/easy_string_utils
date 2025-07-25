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
  final fullText = 'Flutter is fun!';
  final wordText = 'This is a sample sentence.';
  final spacedText = '  Hello  World  ';

  print(text.toTitleCase()); // Hello World
  print(text.toCamelCase()); // helloWorld
  print(email.isValidEmail()); // true
  print(phone.mask(start: 3, end: 7)); // 123****890
  print(name.initials()); // JD
  print(palindrome.isPalindrome()); // true
  print(specialChars.removeSpecialChars()); // hello world
  print(mixed.onlyDigits()); // 100
  print(numeric.isNumeric()); // true
  print(text.reverse()); // dlrow olleh
  print(text.capitalizeFirst()); // Hello world
  print(spaced.removeWhiteSpace()); // HelloFlutter
  print(wordText.wordCount()); // 5
  print(longText.truncateWithEllipsis(20)); // This is a very long...
  print(sample.toSlug()); // my-blog-post
  print(fullText.charCount()); // Output: 15
  print(spacedText.charCountWithoutSpaces()); // 10
  print('Uppercase count: ${sample.upperCaseCount()}'); // Output: 3
  print('Lowercase count: ${sample.lowerCaseCount()}'); // Output: 8
  print(' '.isNullOrEmpty()); //true
  print('User123'.removeDigits()); //User
  print('Hello'.toggleCase()); //hELLO
}
