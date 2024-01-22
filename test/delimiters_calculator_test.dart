import 'package:dart_basics/delimiters_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('GCD returns the correct result', () {
    expect(DelimitersCalculator.GCD(10, 25), equals(5));
    expect(DelimitersCalculator.GCD(15, 45), equals(15));
    expect(DelimitersCalculator.GCD(8, 12), equals(4));
  });

  test('LCM returns the correct result', () {
    expect(DelimitersCalculator.LCM(10, 25), equals(50));
    expect(DelimitersCalculator.LCM(15, 45), equals(45));
    expect(DelimitersCalculator.LCM(8, 12), equals(24));
  });
}