class AuthModal {
  final String bearerToken;
  final String username;

  AuthModal({
    required this.bearerToken,
    required this.username,
  });

  factory AuthModal.fromJson(Map<String, dynamic> json) {
    if (json['bearerToken'] == null) {
      throw ArgumentError('Bearer token is null');
    }
    if (json['username'] == null) {
      throw ArgumentError('Username is null');
    }

    return AuthModal(
      bearerToken: json['bearerToken'] as String,
      username: json['username'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bearerToken': bearerToken,
      'username': username,
    };
  }
}