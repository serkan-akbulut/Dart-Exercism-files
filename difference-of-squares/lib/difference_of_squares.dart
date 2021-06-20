import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int n) {
    int total = 0;
    total = pow(n * (n + 1) / 2, 2).toInt();
    return total;
  }

  int sumOfSquares(int n) {
    int total = 0;
    total = n * (n + 1) * (2 * n + 1) ~/ 6;
    return total;
  }

  int differenceOfSquares(int n) {
    int total1 = 0;
    int total2 = 0;
    int diff = 0;
    total1 = n * (n + 1) * (2 * n + 1) ~/ 6;
    total2 = pow(n * (n + 1) / 2, 2).toInt();
    diff = total2 - total1;
    return diff;
  }
}
