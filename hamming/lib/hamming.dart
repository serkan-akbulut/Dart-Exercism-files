class Hamming {
  // Put your code here

  int distance(String first, String second) {
    int diff = 0;
    String message = "";
    if (first.isEmpty && second.isEmpty) {
      return 0;
    }
    if (first.isNotEmpty && second.isNotEmpty) {
      List<String> strF = first.split("");
      List<String> strS = second.split("");

      print(strF);
      print(strS);
      if (strF.length == strS.length) {
        for (int i = 0; i < strF.length; i++) {
          if (strF[i].compareTo(strS[i]) != 0) {
            diff++;
          }
        }
        return diff;
      } else {
        message = "left and right strands must be of equal length";
      }
    } else {
      message = "no strand must be empty";
    }

    throw new ArgumentError(message);
  }
}
