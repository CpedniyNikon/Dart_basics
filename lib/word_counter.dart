class WordCounter {
  static Map<String, int> Count(List<String> words) {

    Map<String, int> map = {};
    for(int i = 0; i < words.length; i++) {
      if(!map.containsKey(words[i])) {
        map[words[i]] = 1;
      }
      else map[words[i]] = map[words[i]]! + 1;
    }
    return map;
  }
}
