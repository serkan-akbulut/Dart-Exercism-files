class Allergies {
  // Put your code here
  Map<String, int> allercigList = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };
  bool allergicTo(String aliment, int score) =>
      score & allercigList[aliment] != 0;

  List<String> list(int score) =>
      allercigList.keys.where((aliment) => allergicTo(aliment, score)).toList();
}
