import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        const Text('Profile Screen'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/sign-in');
          },
          child: const Text('Logout'),
        ),
          ],
        ),
      ),
    );
  }
}
