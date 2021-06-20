class PrimeFactors {
  List<int> factors(num number) {
    List<int> ans = [];
    if (number == 1) return ans;
    var i = 2;
    while (number != 1) {
      if (number % i == 0) {
        ans.add(i);
        number /= i;
      }
      i++;
    }
    return ans;
  }
}
