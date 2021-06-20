int score(String s) {
  int result = 0;
  for (int i = 0; i < s.length; i++) {
    if ("aeioulnrstAEIOULNRST".indexOf(s[i]) != -1) {
      result += 1;
    }
    if ("dgDG".indexOf(s[i]) != -1) {
      result += 2;
    }
    if ("bcmpBCMP".indexOf(s[i]) != -1) {
      result += 3;
    }
    if ("fhvwyFHVWY".indexOf(s[i]) != -1) {
      result += 4;
    }
    if ("kK".indexOf(s[i]) != -1) {
      result += 5;
    }
    if ("jxJX".indexOf(s[i]) != -1) {
      result += 8;
    }
    if ("qzQZ".indexOf(s[i]) != -1) {
      result += 10;
    }
  }
  return result;
}
