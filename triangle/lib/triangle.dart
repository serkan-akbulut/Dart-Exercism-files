class Triangle {
  // Put your code here

  bool scalene(double a, double b, double c) {
    bool flag = false;
    if ((a <= 0 || b <= 0 || c <= 0) || (a + b < c || a + c < b || b + c < a)) {
      flag = false;
    } else {
      if (a != b && a != c && b != c) {
        flag = true;
      }
    }
    return flag;
  }

  bool equilateral(double a, double b, double c) {
    bool flag = false;
    if ((a <= 0 || b <= 0 || c <= 0) || (a + b < c || a + c < b || b + c < a)) {
      flag = false;
    } else {
      if (a == b && a == c && b == c) {
        flag = true;
      }
    }
    return flag;
  }

  bool isosceles(double a, double b, double c) {
    bool flag = false;
    if ((a <= 0 || b <= 0 || c <= 0) || (a + b < c || a + c < b || b + c < a)) {
      flag = false;
    } else {
      if (a == b || a == c || b == c) {
        flag = true;
      }
    }
    return flag;
  }
}
