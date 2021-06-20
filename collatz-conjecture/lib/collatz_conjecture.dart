class CollatzConjecture {
  // Put your code here

  int steps(int n) {
    String message = "";
    int count = 0;

    if (n <= 0) {
      message = "Only positive numbers are allowed";
      throw ArgumentError(message);
    } else {
      if (n == 1) {
        return count;
      }
      while (n != 1) {
        if (n % 2 == 0) {
          count++;
          n = n ~/ 2;
        } else {
          count++;
          n = (3 * n) + 1;
        }
      }
    }
    return count;
  }
}
