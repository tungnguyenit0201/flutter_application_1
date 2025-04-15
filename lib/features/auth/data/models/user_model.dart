class UserModel {
  final String? id;
  final String email;
  final String? bearerToken;

  UserModel({required this.id, required this.email, this.bearerToken});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['username'] as String,
        email: json['username'] as String,
        bearerToken: json['bearer_token'] as String?,
      );
}
