import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainTabScreen extends StatelessWidget {
  final Widget child;

  const MainTabScreen({super.key, required this.child});

  static const tabs = [
    {'icon': Icons.home, 'label': 'Home', 'location': '/home'},
    {'icon': Icons.person, 'label': 'Profile', 'location': '/profile'},
  ];

  int _locationToTabIndex(String location) {
    return tabs.indexWhere((tab) => location.startsWith(tab['location'] as String));
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final selectedIndex = _locationToTabIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          context.go(tabs[index]['location'] as String);
        },
        items: tabs
            .map((tab) => BottomNavigationBarItem(
                  icon: Icon(tab['icon'] as IconData),
                  label: tab['label'] as String,
                ))
            .toList(),
      ),
    );
  }
}
