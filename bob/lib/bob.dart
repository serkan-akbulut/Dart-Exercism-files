class Bob {
  // Put your code here

  String response(String input) {
    input = input.trim();
    var isQuestion = input.endsWith("?");
    var isCapitalized =
        input == input.toUpperCase() && input.contains(RegExp(r"[a-zA-Z]"));

    if (input.isEmpty) {
      return "Fine. Be that way!";
    }

    if (isQuestion) {
      if (isCapitalized) {
        return "Calm down, I know what I'm doing!";
      } else {
        return "Sure.";
      }
    }
    if (isCapitalized) {
      return "Whoa, chill out!";
    }

    return "Whatever.";
  }
}
