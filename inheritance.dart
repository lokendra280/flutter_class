class User {
  final int id;
  final String name;
  final String password;
  final String dob;
  final String bio;
  final String? role;

  static String country = "Nepal";
  static int activeNumber = 0;

  User(
      {required this.id,
      required this.name,
      required this.password,
      required this.dob,
      required this.bio,
      this.role});

  //action performed by user
  login() {
    activeNumber++;
    print("$name is logged in");
  }

  logout() {
    activeNumber--;
    print("$name is logged out");
  }
}

class Admin extends User {
  Admin(
      {required super.id,
      required super.name,
      required super.password,
      required super.dob,
      required super.bio});
  deletepost() {}
  kickOut() {}
}

class Moderator extends Admin {
  Moderator(
      {required super.id,
      required super.name,
      required super.password,
      required super.dob,
      required super.bio});
}

class SuperPowerfullAdmin extends Admin {
  SuperPowerfullAdmin(
      {required super.id,
      required super.name,
      required super.password,
      required super.dob,
      required super.bio});

  groupDelete() {}
  removeModerator() {}
}

class NormalUser extends User {
  NormalUser(
      {required super.id,
      required super.name,
      required super.password,
      required super.dob,
      required super.bio});
  LeaveGroup() {}
}

void main(List<String> args) {
  Moderator moderator = Moderator(
    bio: 'dob',
    dob: 'dob',
    id: 1111,
    name: 'ram@Admin',
    password: 'passswprd',
  );
  SuperPowerfullAdmin superPowerfulAdmin = SuperPowerfullAdmin(
      id: 1111,
      name: "good@Admin",
      password: "password",
      dob: 'dob',
      bio: 'bio');
  // NormalUser normalUser = NormalUser();
  User.activeNumber;
  moderator.login();
  moderator.logout();
  moderator.deletepost();
  moderator.kickOut();

  superPowerfulAdmin.kickOut();
  superPowerfulAdmin.login();
  superPowerfulAdmin.logout();
  superPowerfulAdmin.groupDelete();
  superPowerfulAdmin.removeModerator();
  // normalUser.login();
  // normalUser.logout();
  bool isSA = superPowerfulAdmin is User;

  bool isModeratorSA = moderator is SuperPowerfullAdmin;

  print(isSA);
  print(isModeratorSA);
}
