abstract class User {
  String email;

  User({required this.email});

  String getMailSystem() {
    return email;
  }
}

class GeneralUser extends User {
  GeneralUser({required email}) : super(email: email);
}

mixin MailSystemMixin on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}

class AdminUser extends User with MailSystemMixin {
  AdminUser({required email}) : super(email: email);
}

class UserManager<T extends User> {
  List<User> users = List<User>.empty(growable: true);

  void add(User user) {
    if (!users.contains(user)) users.add(user);
  }

  void remove(User user) {
    if (users.contains(user)) users.remove(user);
  }

  List<String> returnUsers() {
    List<String> userList = List<String>.empty(growable: true);
    for(int i = 0; i < users.length; i++) {
      userList.add(users[i].getMailSystem());
    }
    return userList;
  }
}


List<String> test() {
  UserManager<User> manager = new UserManager();
  manager.add(new GeneralUser(email: "carry2002@mail.ru"));
  manager.add(new AdminUser(email: "carry20002@mail.ru"));
  return manager.returnUsers();
}