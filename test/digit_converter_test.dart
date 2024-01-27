import 'package:dart_basics/digit_converter.dart';
import 'package:test/test.dart';

void main() {
  test('Test hexToBinary', () {
    expect(DigitConverter.hexToBinary(10), equals('1010'));
    expect(DigitConverter.hexToBinary(15), equals('1111'));
    expect(DigitConverter.hexToBinary(5), equals('101'));
  });

  test('Test binaryToHex', () {
    expect(DigitConverter.binaryToHex('1010'), equals(10));
    expect(DigitConverter.binaryToHex('1111'), equals(15));
    expect(DigitConverter.binaryToHex('101'), equals(5));
  });
}