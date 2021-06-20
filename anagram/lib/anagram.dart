class Anagram {
  // Put your code here

  List<String> findAnagrams(String s, List<String> lists) {
    List<String> str = s.toLowerCase().split("");
    List<String> sortingList = [];
    List<String> stack = [];

    str.sort((a, b) => a.compareTo(b));

    for (int i = 0; i < lists.length; i++) {
      sortingList = lists[i].toLowerCase().split("");

      sortingList.sort((a, b) => a.compareTo(b));
      if (str.toString() == sortingList.toString() &&
          lists[i].toLowerCase() != s.toLowerCase()) {
        stack.add(lists[i]);
      }
    }
    return stack;
  }
}
