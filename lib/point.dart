import 'dart:math';

class Point {
  late int x;
  late int y;
  late int z;

  Point.create(int x, int y, int z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  factory Point.start() {
    return Point.create(0, 0, 0);
  }

  factory Point.unit() {
    return Point.create(1, 1, 1);
  }

  double distanceTo(Point another) {
    return sqrt((x - another.x) * (x - another.x) +
        (y - another.y) * (y - another.y) +
        (z - another.z) * (z - another.z));
  }

  static double getArea(Point first, Point second, Point third) {
    return ((second.x - first.x) * (third.y - first.y) -
            (third.x - first.x) * (second.y - first.y)) /
        2;
  }
}

double test_distance() {
  Point p1 = Point.start();
  Point p2 = Point.unit();
  return p1.distanceTo(p2);
}

double test_area() {
  Point p1 = Point.start();
  Point p2 = Point.create(4, 0, 0);
  Point p3 = Point.create(0, 3, 0);
  return Point.getArea(p1, p2, p3);
}
