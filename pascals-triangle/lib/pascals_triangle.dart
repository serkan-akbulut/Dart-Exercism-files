class PascalsTriangle {
  // Put your code here
  List<List<int>> rows(int n) {
    var result = <List<int>>[];

    for (int i = 0; i < n; i++) {
      var row = <int>[];

      for (int j = 0; result.isNotEmpty && j < result.last.length; j++) {
        row.add(j == 0 ? 1 : result.last[j] + result.last[j - 1]);
      }

      result.add(row..add(1));
    }

    return result;
  }
}
