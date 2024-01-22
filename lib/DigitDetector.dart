class DigitDetector {
  static List<int> findDigits(List<String> strings) {
    var result = List<int>.empty(growable: true);
    for(int i = 0; i < strings.length;i++) {
      bool flag = true;
      for(int j = 0; j < strings[i].length;j++) {
        if(strings[i].codeUnitAt(j) >= '0'.codeUnitAt(0) && strings[i].codeUnitAt(j) <= '9'.codeUnitAt(0)) {
          continue;
        } else {
          flag = false;
          break;
        }
      }
      if(flag) {
        result.add(int.parse(strings[i]));
      }
    }
    return result;
  }
}
