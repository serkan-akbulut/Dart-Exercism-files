class Pangram {
  // Put your code here

  bool isPangram(String sentence) {
    String albp = "abcdefghijklmnopqrstuvwxyz";
    List<String> alp = albp.split("");
    List<String> sentenceNew = [];

    List<String> s =
        sentence.toLowerCase().replaceAll(RegExp(r"[^a-z]"), '').split("");
    s..sort((a, b) => a.compareTo(b));
    if (s.length == 0 || s.length < 26) {
      return false;
    } else {
      for (int i = 0; i < s.length; i++) {
        if (!sentenceNew.contains(s[i])) {
          sentenceNew.add(s[i]);
        }
      }
      if (alp.toString() == sentenceNew.toString()) {
        return true;
      } else
        return false;
    }
  }
}
