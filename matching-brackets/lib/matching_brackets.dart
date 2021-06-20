class MatchingBrackets {
  static final Map<String, String> pairs = {'{': '}', '[': ']', '(': ')'};
  static final Set<String> closed = pairs.values.toSet();

  bool isPaired(String brackets) {
    List<String> stack = [];
    for (int i = 0; i < brackets.length; i++) {
      if (pairs.containsKey(brackets[i])) {
        stack.add(brackets[i]);
      } else if (closed.contains(brackets[i])) {
        if (stack.length == 0) return false;
        String last = stack.removeLast();
        if (pairs[last] != brackets[i]) {
          return false;
        }
      }
    }
    return stack.length == 0;
  }
}
