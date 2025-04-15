class AuthService {
  Future<bool> signIn(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return email == 'admin@example.com' && password == 'password123';
  }
}
