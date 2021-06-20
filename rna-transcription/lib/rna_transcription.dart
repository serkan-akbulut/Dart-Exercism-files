class RnaTranscription {
  // Put your code here

  String toRna(String s) {
    List<String> str = [];
    str = s.split("");
    String message = "";
    for (int i = 0; i < str.length; i++) {
      if (str[i].contains("C")) {
        message += "G";
      } else if (str[i].contains("G")) {
        message += "C";
      } else if (str[i].contains("A")) {
        message += "U";
      } else if (str[i].contains("T")) {
        message += "A";
      }
    }
    return message;
  }
}
