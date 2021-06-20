class WordCount {
  // Put your code here
  Map<String, int> countWords(String sentence) {
    var words = RegExp(r"\w+(\'\w+)?");

    return words
        .allMatches(sentence)
        .map((item) => item.group(0).toLowerCase())
        .fold(new Map<String, int>(),
            (Map<String, int> wordCounts, String word) {
      if (wordCounts.containsKey(word)) {
        wordCounts[word] += 1;
      } else {
        wordCounts[word] = 1;
      }
      return wordCounts;
    });
  }
}
