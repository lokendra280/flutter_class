class User {
  int id;
  String name;
  String Password;
  String dob;
  String bio;

  User(
      {required this.id,
      required this.name,
      required this.bio,
      required this.dob,
      required this.Password});

  login() {
    print("${this.name} is logging in");
  }

  logout() {
    print("${this.name} is logging out");
  }

  createPost() {}
}

void main(List<String> args) {
  var bibek = new User(
      id: 100,
      name: "Bibek Khadaka",
      bio: "single",
      dob: '2057 / 5 / 34',
      Password: "password");
  // bibek.name = "not bibek";
  // bibek.dob = "2025";
  print(bibek.name);
  print(bibek.bio);
  bibek.login();
  bibek.logout();

  var arjun = new User(
      id: 200,
      name: "Arjun Singh",
      bio: "Married",
      dob: "2065",
      Password: "Password");
  print(arjun.name);
  arjun.login();
  arjun.logout();
}
