class NthPrime {
  int prime(int num) {
    if (num == 0) {
      throw new ArgumentError("There is no zeroth prime");
    }
    List<int> primeN = [];
    int i = 0;
    while (primeN.length != num) {
      if (IsPrime(i)) {
        primeN.add(i);
      }
      i++;
    }
    return primeN[num - 1];
  }

  bool IsPrime(int n) {
    if (n == 2 || n == 3) return true;

    if (n <= 1 || n % 2 == 0 || n % 3 == 0) return false;

    for (int i = 5; i * i <= n; i += 6) {
      if (n % i == 0 || n % (i + 2) == 0) return false;
    }

    return true;
  }
}
