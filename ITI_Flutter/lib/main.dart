import 'dart:io';
void main() {
  String input = stdin.readLineSync()!;

  print(validateUsername(input)); // false (invalid character @)
}

bool validateUsername(String input) {
  // Check length first
  if (input.length < 6 || input.length > 12) {
    return false;
  }

  // Check each character
  for (int i = 0; i < input.length; i++) {
    final codeUnit = input.codeUnitAt(i);
    if (!((codeUnit >= 65 && codeUnit <= 90) || // A-Z
        (codeUnit >= 97 && codeUnit <= 122) || // a-z
        (codeUnit >= 48 && codeUnit <= 57) || // 0-9
        codeUnit == 36 || // $
        codeUnit == 95)) {
      // _
      return false;
    }
  }
  return true;
}
