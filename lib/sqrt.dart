extension on num {
  double sqrt(int n) {
    if (this < 0) throw ArgumentError("digit is less than zero");
    if (this == 0) return 0;

    double current = this.toDouble();
    double previous;

    do {
      previous = current;
      current = ((n - 1) * previous + this / pow(previous, n - 1)) / n;
    } while (abs(current - previous) >= 0.00001);

    return current;
  }
}

abs(double val) {
  if(val > 0) return val;
  return -val;
}

pow(double val, int n) {
  double result = 1;
  while(n>0) {
    result*=val;
    n--;
  }
  return result;
}

double test(int number, int n) {
  return number.sqrt(5);
}
