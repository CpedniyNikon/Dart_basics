import 'dart:math';

import 'package:test/test.dart';
import 'package:dart_basics/point.dart' as point;


void main() {
  test('test point class', () {
    expect(point.test_distance() , equals(sqrt(3)));
    expect(point.test_area() , equals(6));

  });
}
