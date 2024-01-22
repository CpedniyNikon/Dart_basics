import 'dart:math';

class DigitConverter {
  static String hexToBinary(int digit) {
    StringBuffer buffer = new StringBuffer();
    while(digit > 0) {
      var char = (digit.round()%2).toString();
      buffer.write(char);
      digit = digit ~/ 2;
    }
    return buffer.toString().split('').reversed.join('');
  }

  static int binaryToHex(String digit) {
    int result = 0;

    for (int i = 0; i < digit.length; i++) {
      result *= 2;
      result += int.parse(digit[i]);
    }

    return result;
  }
}
