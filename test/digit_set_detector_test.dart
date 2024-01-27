import 'package:dart_basics/digit_set_detector.dart';
import 'package:test/test.dart';

void main() {
  test(
      'return set of digits in container of strings',
          () {
        List<String> strings = ['one', 'two', 'zero', 'zero'];

        Set<int> result = DigitSetDetector.setOfDigits(strings);

        expect(result, {1,2,0});
      });
}
