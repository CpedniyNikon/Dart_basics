import 'dart:math';

class DelimitersCalculator {
  static int GCD(int a, int b) {
    while (a != 0 && b != 0) {
      if (a > b) {
        a = a % b;
      } else
        b = b % a;
    }
    return max(a, b);
  }

  static double LCM(int a, int b) {
    return a * b /GCD(a, b);
  }
}
