import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/data/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/data/auth_repository_impl.dart';
import 'package:go_router/go_router.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final repo = AuthRepositoryImpl(AuthRemoteDataSource());

  void _handleSignIn() async{
    final email = _emailController.text;
    final password = _passwordController.text;
    
    try {
      final user = await repo.signIn(email, password);

      context.go('/home');
    } catch (e) {
      // print(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(labelText: 'Phone'),
          autofocus: true,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: _handleSignIn,
          child: const Text('Sign In'),
        ),
      ],
    );
  }
}
