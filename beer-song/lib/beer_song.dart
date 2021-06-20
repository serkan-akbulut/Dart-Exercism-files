class BeerSong {
  List<String> recite(int all, int verses) {
    List<String> strarr = [];
    for (int i = all; i > all - verses; i--) {
      if (i == 1) {
        strarr.add("$i bottle of beer on the wall, $i bottle of beer.");
        strarr.add(
            "Take it down and pass it around, no more bottles of beer on the wall.");
        if (i != all - verses + 1) strarr.add("");
      } else if (i == 0) {
        strarr.add(
            "No more bottles of beer on the wall, no more bottles of beer.");
        strarr.add(
            "Go to the store and buy some more, 99 bottles of beer on the wall.");
      } else {
        strarr.add("$i bottles of beer on the wall, $i bottles of beer.");
        if (i - 1 == 1) {
          strarr.add(
              "Take one down and pass it around, ${i - 1} bottle of beer on the wall.");
        } else {
          strarr.add(
              "Take one down and pass it around, ${i - 1} bottles of beer on the wall.");
        }

        if (i != all - verses + 1) strarr.add("");
      }
    }
    return strarr;
  }
}
