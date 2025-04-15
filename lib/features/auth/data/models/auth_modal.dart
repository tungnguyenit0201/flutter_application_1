class AuthModal {
  final String bearerToken;
  final String username;

  AuthModal({
    required this.bearerToken,
    required this.username,
  });

  factory AuthModal.fromJson(Map<String, dynamic> json) {
    print(json['bearerToken']);
    // if (json == null) throw ArgumentError('User json is null');
    // if (json['bearerToken'] == null) {
    //   throw ArgumentError('Bearer token is null');
    // }
    // if (json['username'] == null) {
    //   throw ArgumentError('Username is null');
    // }

    // return AuthModal(
    //   bearerToken: json['bearerToken'] as String,
    //   username: json['username'] as String,
    // );
    return AuthModal(
      bearerToken: 'bearerToken',
      username: 'username',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bearerToken': bearerToken,
      'username': username,
    };
  }
}