import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/data/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/data/auth_repository_impl.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/logo_animated.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final repo = AuthRepositoryImpl(AuthRemoteDataSource());
  bool _obscureText = true;

  void _handleSignIn() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      final user = await repo.signIn(email, password);

      context.go('/home');
    } catch (e) {
      // print(e.toString());
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  void _handleBiometrics() async {
    final LocalAuthentication auth = LocalAuthentication();
   final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LogoAnimated(),
        const SizedBox(height: 12),
        const Text(
          'Welcome\nto Buymed',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'Prompt',
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Login to get many attractive offers',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Prompt',
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            hintText: 'Enter phone number',
            hintStyle: const TextStyle(
              fontFamily: 'Prompt',
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
          ),
          autofocus: true,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 24),
        TextField(
          controller: _passwordController,
          obscureText: _obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            hintText: 'Password',
            hintStyle: const TextStyle(
              fontFamily: 'Prompt',
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0XFFE4E4EB),
                width: 1.0,
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: _handleSignIn,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            backgroundColor: Color(0xFF005C29),
          ),
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontFamily: 'Prompt',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          onPressed: ,
          children: [
            Lottie.asset('assets/jsons/biometrics.json', width: 40, height: 40),
          ],
        )
      ],
    );
  }
}
