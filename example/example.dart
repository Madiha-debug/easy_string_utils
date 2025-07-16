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
  final slugText = 'My Blog Post!';
  final digitsText = 'Call me at 0321-1234567';
  final wordText = 'This is a sample sentence.';

  print(text.toTitleCase());                    // Hello World
  print(text.toCamelCase());                    // helloWorld
  print(email.isValidEmail());                  // true
  print(phone.mask(start: 3, end: 7));          // 123****890
  print(name.initials());                       // JD
  print(palindrome.isPalindrome());             // true
  print(specialChars.removeSpecialChars());     // hello world
  print(mixed.onlyDigits());                    // 100
  print(numeric.isNumeric());                   // true
  print(text.reverse());                        // dlrow olleh
  print(text.capitalizeFirst());                // Hello world
  print(spaced.removeWhiteSpace());             // HelloFlutter
  print(wordText.wordCount());                  // 5
  print(longText.truncateWithEllipsis(20));     // This is a very long...
  print(slugText.toSlug());                     // my-blog-post
}
