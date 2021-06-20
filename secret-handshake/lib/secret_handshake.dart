class SecretHandshake {
  // Put your code here
  Map<String, int> SecretList = {
    "wink": 1,
    "double blink": 2,
    "close your eyes": 4,
    "jump": 8,
    "Reverse the order": 16,
  };
  bool SecrecTo(String aliment, int score) => score & SecretList[aliment] != 0;

  List<String> commands(int num) {
    List<String> ReversedL =
        SecretList.keys.where((aliment) => SecrecTo(aliment, num)).toList();
    if (ReversedL.contains("Reverse the order")) {
      ReversedL.remove("Reverse the order");
      return ReversedL.reversed.toList();
    } else
      return SecretList.keys
          .where((aliment) => SecrecTo(aliment, num))
          .toList();
  }
}
