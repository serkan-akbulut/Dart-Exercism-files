class PhoneNumber {
  String clean(String phoneNumber) {
    if (phoneNumber.contains(RegExp(r"[!@:]"))) {
      throw FormatException('punctuations not permitted');
    }

    if (phoneNumber.contains(RegExp(r"\((?=0)"))) {
      throw FormatException('area code cannot start with zero');
    }

    if (phoneNumber.contains(RegExp(r"\((?=1)"))) {
      throw FormatException('area code cannot start with one');
    }

    if (phoneNumber.contains(RegExp(r"\)\s(?=0)"))) {
      throw FormatException('exchange code cannot start with zero');
    }

    if (phoneNumber.contains(RegExp(r"\)\s(?=1)"))) {
      throw FormatException('exchange code cannot start with one');
    }

    String phoneNumberClean = phoneNumber.replaceAll(RegExp(r"\W"), '');
    print(phoneNumberClean);

    if (phoneNumberClean.length < 10) {
      throw FormatException('incorrect number of digits');
    }

    if (phoneNumberClean.length > 11) {
      throw FormatException('more than 11 digits');
    }

    if (phoneNumberClean.contains(RegExp(r"[^\d]"))) {
      throw FormatException('letters not permitted');
    }

    if (phoneNumberClean.length == 11 && !phoneNumberClean.startsWith('1')) {
      throw FormatException('11 digits must start with 1');
    }

    if (phoneNumberClean.length == 11 && phoneNumberClean.startsWith('1')) {
      phoneNumberClean = phoneNumberClean.substring(1);
    }

    return phoneNumberClean;
  }
}
