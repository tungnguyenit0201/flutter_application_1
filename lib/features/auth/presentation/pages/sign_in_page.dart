import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignInView();
  }
}

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          // Navigate when authenticated
          if (authProvider.status == AuthStatus.authenticated) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              GoRouter.of(context).go('/home');
            });
          }
          
          // Show error message
          if (authProvider.status == AuthStatus.error) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(authProvider.errorMessage ?? 'Authentication failed')),
              );
            });
          }
          
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInForm(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
} 