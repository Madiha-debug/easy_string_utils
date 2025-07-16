extension StringUtils on String {

  /// Converts each word in the string to Title Case
  String toTitleCase() {
    if (isEmpty) return this;
    return split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  /// Removes all white space characters from the string
  String removeWhiteSpace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Validates if the string is a properly formatted email address
  bool isValidEmail() {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(this);
  }

  /// Reverses the string
  String reverse() {
    return split('').reversed.join('');
  }

  /// Capitalizes only the first letter of the string.
  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  /// Convert space-separated or snake_case to camelCase.
  String toCamelCase() {
    final words = toLowerCase().split(RegExp(r'[_\s]+'));
    return words.first + words.skip(1).map((w) => w.capitalizeFirst()).join();
  }

  /// Removes symbols and keeps only letters and numbers.
  String removeSpecialChars() {
    return replaceAll(RegExp(r'[^\w\s]'), '');
  }

  /// Extract only digits from the string.
  String onlyDigits() {
    return replaceAll(RegExp(r'\D'), '');
  }

  /// Check if the string represents a number.
  bool isNumeric() {
    return double.tryParse(this) != null;
  }

  /// Check if a string reads the same forward and backward.
  bool isPalindrome() {
    String cleaned = toLowerCase().replaceAll(RegExp(r'\s+'), '');
    return cleaned == cleaned.split('').reversed.join('');
  }

  /// Trim string and add ... if it's too long.
  String truncateWithEllipsis(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }

  /// Converts a string to URL slug format:
  /// Example: 'My Blog Post!' → 'my-blog-post'
  String toSlug() {
    return toLowerCase()
        .replaceAll(RegExp(r'[^\w\s-]'), '')
        .trim()
        .replaceAll(RegExp(r'\s+'), '-');
  }

  /// Counts the number of words in a string.
  int wordCount() {
    return trim().isEmpty ? 0 : trim().split(RegExp(r'\s+')).length;
  }

  /// Mask part of the string (e.g., hiding email or phone digits).
  ///
  /// Example:
  ///
  /// '1234567890'.mask(start: 3, end: 7) → '123****890'
  String mask({int start = 0, int end = -1, String maskChar = '*'}) {
    if (isEmpty) return this;
    int e = end == -1 ? length : end;
    if (start >= e) return this;
    String masked = List.generate(e - start, (_) => maskChar).join();
    return substring(0, start) + masked + substring(e);
  }

  /// Extracts initials from a full name.
  ///
  /// Example: 'John Doe' → 'JD'
  String initials() {
    final cleaned = trim();
    if (cleaned.isEmpty) return '';

    return cleaned
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase())
        .join();
  }
}
