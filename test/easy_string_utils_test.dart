import 'package:easy_string_utils/utils/string_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringUtils extension tests', () {
    test('toTitleCase', () {
      expect('hello world'.toTitleCase(), 'Hello World');
      expect('FLUTTER is AWESOME'.toTitleCase(), 'Flutter Is Awesome');
      expect(''.toTitleCase(), '');
    });

    test('removeWhiteSpace', () {
      expect(' he llo '.removeWhiteSpace(), 'hello');
      expect(' \t\n\r'.removeWhiteSpace(), '');
      expect('noSpaces'.removeWhiteSpace(), 'noSpaces');
    });

    test('isValidEmail', () {
      expect('test@example.com'.isValidEmail(), true);
      expect('bad-email'.isValidEmail(), false);
      expect('another.test@domain.co.uk'.isValidEmail(), true);
      expect('missing@at_symbol'.isValidEmail(), false);
      expect(''.isValidEmail(), false);
    });

    test('reverse', () {
      expect('dart'.reverse(), 'trad');
      expect(''.reverse(), '');
      expect('a'.reverse(), 'a');
    });

    test('capitalizeFirst', () {
      expect('hello'.capitalizeFirst(), 'Hello');
      expect(''.capitalizeFirst(), '');
      expect('h'.capitalizeFirst(), 'H');
    });

    test('toCamelCase', () {
      expect('hello world'.toCamelCase(), 'helloWorld');
      expect('snake_case_string'.toCamelCase(), 'snakeCaseString');
      expect(''.toCamelCase(), '');
      expect('AlreadyCamel'.toCamelCase(), 'alreadycamel');
    });

    test('removeSpecialChars', () {
      expect('hello@world!'.removeSpecialChars(), 'helloworld');
      expect('123#456\$789'.removeSpecialChars(), '123456789');
      expect('noSpecials'.removeSpecialChars(), 'noSpecials');
    });

    test('onlyDigits', () {
      expect('phone: 123-456-7890'.onlyDigits(), '1234567890');
      expect('no digits!'.onlyDigits(), '');
      expect('007'.onlyDigits(), '007');
    });

    test('isNumeric', () {
      expect('123'.isNumeric(), true);
      expect('12.34'.isNumeric(), true);
      expect('-56.78'.isNumeric(), true);
      expect('abc123'.isNumeric(), false);
      expect(''.isNumeric(), false);
    });

    test('isPalindrome', () {
      expect('Racecar'.isPalindrome(), true);
      expect('No lemon no melon'.isPalindrome(), true);
      expect('hello'.isPalindrome(), false);
      expect(
          ''.isPalindrome(), true); // empty string can be considered palindrome
    });

    test('truncateWithEllipsis', () {
      expect('Hello, world!'.truncateWithEllipsis(5), 'Hello...');
      expect('short'.truncateWithEllipsis(10), 'short');
      expect(''.truncateWithEllipsis(2), '');
    });

    test('toSlug', () {
      expect('My Blog Post!'.toSlug(), 'my-blog-post');
      expect('  Hello World  '.toSlug(), 'hello-world');
      expect('Flutter_is_awesome'.toSlug(), 'flutter_is_awesome');
    });

    test('wordCount', () {
      expect('Hello world from Dart'.wordCount(), 4);
      expect('   multiple   spaces  here   '.wordCount(), 3);
      expect(''.wordCount(), 0);
    });

    test('mask', () {
      expect('1234567890'.mask(start: 3, end: 7), '123****890');
      expect('abcdef'.mask(start: 0, end: 3, maskChar: '#'), '###def');
      expect('test'.mask(start: 1), 't***');
      expect('short'.mask(start: 10), 'short'); // start > length, no mask
      expect(''.mask(), '');
    });

    test('initials', () {
      expect('John Doe'.initials(), 'JD');
      expect('  Zeeshan    Abbasi  '.initials(), 'ZA');
      expect('single'.initials(), 'S');
      expect(''.initials(), '');
      expect('   '.initials(), '');
      expect('multiple   spaces here'.initials(), 'MSH');
    });

    test('charCount should return total number of characters', () {
      expect('Flutter'.charCount(), 7);
      expect('Hello World!'.charCount(), 12); // includes space and punctuation
      expect(''.charCount(), 0);
    });

    test(
        'charCountWithoutSpaces should return number of non-whitespace characters',
        () {
      expect('Flutter Dev'.charCountWithoutSpaces(), 10);
      expect('  Dart  Lang  '.charCountWithoutSpaces(), 8);
      expect(''.charCountWithoutSpaces(), 0);
    });

    test('Mixed and empty string cases', () {
      expect(''.upperCaseCount(), 0);
      expect(''.lowerCaseCount(), 0);
      expect('1234!@#'.upperCaseCount(), 0);
      expect('1234!@#'.lowerCaseCount(), 0);
      expect('ALLUPPER'.upperCaseCount(), 8);
      expect('alllower'.lowerCaseCount(), 8);
    });

    test('should return true for empty string', () {
      expect(' '.isNullOrEmpty(), isTrue);
    });

    test('should remove digits from string', () {
      expect('User123'.removeDigits(), 'User');
    });

    test('should toggle all character cases', () {
      expect('Hello'.toggleCase(), 'hELLO');
    });
  });
}
