import 'package:dart_basics/word_counter.dart';
import 'package:test/test.dart';

void main() {
  test(
      'count words in collection',
          () {
        List<String> strings = ['123', '123', '456', '4', '5'];

        Map<String, int> result = WordCounter.Count(strings);

        expect(result, {"123": 2, "456": 1, "4": 1, "5": 1});
      });
}
