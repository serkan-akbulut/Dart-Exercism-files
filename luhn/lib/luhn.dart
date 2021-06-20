class Luhn {
  // Put your code here

  bool valid(String card) {
    List<String> num = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];

    List<String> cleanN = [];
    List<String> str = card.split("");
    str.forEach((element) {
      if (num.contains(element)) {
        cleanN.add(element);
      }
    });

    if (cleanN.length < 2) {
      return false;
    }
    print(cleanN);

    for (int i = 0; i < cleanN.length; i++) {
      if (i % 2 == 0) {
        cleanN[i] = (int.parse(cleanN[i]) * 2).toString();
        print(int.parse(cleanN[i]));
        if (int.parse(cleanN[i]) > 9) {
          cleanN[i] = (int.parse(cleanN[i]) - 9).toString();
        }
      } else {
        cleanN[i] = (int.parse(cleanN[i])).toString();
      }
    }
    int total = 0;
    for (int i = 0; i < cleanN.length; i++) {
      total += int.parse(cleanN[i]);
    }
    print(total);
    if (total % 10 == 0) {
      return true;
    } else
      return false;
  }
}
