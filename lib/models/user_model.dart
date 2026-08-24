class UserModel {
  String name;
  String email;
  String? id;

  UserModel({required this.name, required this.email, this.id});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(name: map["name"] ?? '', email: map["email"] ?? '');
  }
}
