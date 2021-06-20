class Diamond {
  static final int capitalACodeUnit = 'A'.codeUnitAt(0);

  List<String> rows(String input) {
    final inputCodeUnit = input.codeUnitAt(0);
    final distanceFromA = inputCodeUnit - capitalACodeUnit;
    final diamondWidth = 1 + distanceFromA * 2;
//....
    final _rows = <String>[];
    int currentDistance = distanceFromA;

    do {
      final letter = String.fromCharCode(inputCodeUnit - currentDistance);
      final padding = ' ' * currentDistance;
      final bodyWidth = diamondWidth - currentDistance * 2;
      var body = (letter * bodyWidth);

      if (body.length > 1) {
        body = body.replaceRange(1, bodyWidth - 1, ' ' * (bodyWidth - 2));
      }

      _rows.add(padding + body + padding);

      currentDistance -= 1;
    } while (currentDistance >= 0);

    return [..._rows, ..._rows.reversed.skip(1)];
  }
}
