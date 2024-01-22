import 'package:dart_basics/digit_detector.dart';
import 'package:test/test.dart';

void main() {
  test(
      'findDigits should return a list of integers with digits from input strings',
      () {
    List<String> strings = ['123', 'abc', '456', 'def', '789'];

    List<int> result = DigitDetector.findDigits(strings);

    expect(result, [123, 456, 789]);
  });
}
