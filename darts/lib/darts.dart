import 'dart:math';

class Darts {
  // Put your code here

  int score(double x, double y) {
    var total = pow(x, 2) + pow(y, 2);

    if (total > 25 && total <= 100) {
      return 1;
    } else if (total > 1 && total <= 25) {
      return 5;
    } else if (total > 0 && total <= 1) {
      return 10;
    } else
      return 0;
  }
}
