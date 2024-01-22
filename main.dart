
import 'package:dart_basics/digit_converter.dart';

import 'lib/digit_detector.dart';

void main() {
  print(DigitConverter.hexToBinary(10));
  print(DigitConverter.hexToBinary(15));
  print(DigitConverter.hexToBinary(5));
  print("");
  print(DigitConverter.binaryToHex('1010'));
  print(DigitConverter.binaryToHex('1111'));
  print(DigitConverter.binaryToHex('101'));
}
