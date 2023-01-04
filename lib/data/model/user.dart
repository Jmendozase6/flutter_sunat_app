class User {
  User({
    required this.name,
    required this.lastName,
    required this.email,
    required this.password,
  });

  String name;
  String lastName;
  String email;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastName": lastName,
        "email": email,
        "password": password,
      };
}
