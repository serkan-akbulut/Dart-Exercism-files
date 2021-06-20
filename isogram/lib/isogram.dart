class Isogram {
  // Put your code here
  bool isIsogram(String s) {
    List<String> str = [];
    String newString = s.toLowerCase();
    if (newString.isNotEmpty) {
      if (newString.contains("-")) {
        str = newString.split("");

        for (int i = 0; i < str.length; i++) {
          for (int k = 0; k < str.length; k++) {
            if (str[i].compareTo(str[k]) == 0 && str[i] != "-" && i != k) {
              return false;
            }
          }
        }
        return true;
      } else if (newString.contains(" ")) {
        str = newString.split("");
        for (int i = 0; i < str.length; i++) {
          for (int k = 0; k < str.length; k++) {
            if (str[i].compareTo(str[k]) == 0 && str[i] != " " && i != k) {
              return false;
            }
          }
        }
        return true;
      } else {
        str = newString.split("");

        for (int i = 0; i < str.length; i++) {
          for (int k = 0; k < str.length; k++) {
            if (str[i].compareTo(str[k]) == 0 && i != k) {
              return false;
            }
          }
        }
        return true;
      }
    }

    return true;
  }
}
