class Acronym {
  // Put your code here

  String abbreviate(String s) => s
      .replaceAll(RegExp(r"-"), " ")
      .replaceAll(RegExp(r"_"), " ")
      .split(" ")
      .map((word) => word.length > 0 ? word.substring(0, 1) : "")
      .join("")
      .toUpperCase();
}
