import 'package:test/test.dart';
import 'package:dart_basics/sqrt.dart' as sqrt;

abs(double val) {
  if (val > 0) return val;
  return -val;
}

void main() {
  test('return n-th root on number', () {
    expect(double.parse((sqrt.test(1024, 5)).toStringAsFixed(2)), equals(4));

    expect(
        () => double.parse((sqrt.test(-1024, 5)).toStringAsFixed(2)),
        throwsA(
          isA<ArgumentError>().having(
            (error) => error.message,
            'message',
            'digit is less than zero',
          ),
        ));
  });
}
