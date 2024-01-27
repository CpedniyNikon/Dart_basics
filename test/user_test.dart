import 'package:test/test.dart';
import 'package:dart_basics/user.dart' as user;

void main() {
  test('test user manager', () {
    expect(user.test(), equals(["carry2002@mail.ru", "mail.ru"]));


  });
}
