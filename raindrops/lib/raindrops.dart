class Raindrops {
  // Put your code here

  String convert(int a) {
    String message = "";
    if (a % 3 != 0 && a % 5 != 0 && a % 7 != 0) {
      message = a.toString();
    }
    if (a % 3 == 0 && a % 5 != 0 && a % 7 != 0) {
      message = "Pling";
    } else if (a % 5 == 0 && a % 3 != 0 && a % 7 != 0) {
      message = "Plang";
    } else if (a % 7 == 0 && a % 5 != 0 && a % 3 != 0) {
      message = "Plong";
    } else if (a % 105 == 0) {
      message = "PlingPlangPlong";
    } else if (a % 15 == 0) {
      message = "PlingPlang";
    } else if (a % 21 == 0) {
      message = "PlingPlong";
    } else if (a % 35 == 0) {
      message = "PlangPlong";
    }
    return message;
  }
}
