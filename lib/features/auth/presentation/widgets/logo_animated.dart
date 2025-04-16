import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'dart:async';

class LogoAnimated extends StatefulWidget {
  const LogoAnimated({super.key});

  @override
  _LogoAnimatedState createState() => _LogoAnimatedState();
}

class _LogoAnimatedState extends State<LogoAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightAnimation;
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _heightAnimation = Tween<double>(
      begin: 0,
      end: 120,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
    var keyboardVisibilityController = KeyboardVisibilityController();
    // Query
    print(
      'Keyboard visibility direct query: ${keyboardVisibilityController.isVisible}',
    );

    // Subscribe
    keyboardSubscription = keyboardVisibilityController.onChange.listen((
      bool visible,
    ) {
      print('Keyboard visibility update. Is visible: $visible');
      if (visible) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    });
  }

  void show() {
    _controller.forward();
  }

  void hide() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _heightAnimation,
      builder: (context, child) {
        return SizedBox(
          height: _heightAnimation.value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_foreground.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/logo_background.png',
                width: 85.6,
                height: 120,
                fit: BoxFit.contain,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    keyboardSubscription.cancel();
    super.dispose();
  }
}
