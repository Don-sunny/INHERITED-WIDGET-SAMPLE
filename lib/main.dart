import 'package:flutter/material.dart';
import 'package:inherited_widget/sample-1/screens/first_screen.dart';
import 'package:inherited_widget/sample-2/theme_home_screen.dart';
import 'package:inherited_widget/sample-2/theme_inherited.dart';

void main() {
  runApp(ThemeInherited(
    themeData: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        )),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeInherited.of(context)!.themeData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const ThemHomeScreen(),
    );
  }
}
