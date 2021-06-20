bool isValid(String input) {
  input = input.replaceAll("-", "");
  if (!RegExp(r"^\d{9}[\dX]$").hasMatch(input)) return false;
  int checkSum = 0;
  for (int i = 0; i < input.length; i++)
    checkSum += input[i] != 'X' ? (10 - i) * int.parse(input[i]) : 10;
  return checkSum % 11 == 0;
}
