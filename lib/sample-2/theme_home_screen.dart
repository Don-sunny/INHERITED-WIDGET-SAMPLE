import 'package:flutter/material.dart';

class ThemHomeScreen extends StatelessWidget {
  const ThemHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'InheritedWidget Example',
        ),
      ),
      body: Center(
        child: Text(
          'Theme Example',
          style: TextStyle(
            color: theme.primaryColor,
          ),
        ),
      ),
    );
  }
}
