class DigitSetDetector {
  static Map<String, int> StringToDigit= {
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9,
  };
  static Set<int> setOfDigits(List<String> strings) {
    Set<int> set = {};

    for(int i = 0; i < strings.length; i++) {
      set.add(StringToDigit[strings[i]]!);
    }

    return set;
  }
}
