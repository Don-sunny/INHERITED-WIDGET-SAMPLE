import 'package:flutter/material.dart';

class ThemeInherited extends InheritedWidget {
  final ThemeData themeData;

  const ThemeInherited({
    super.key,
    required this.themeData,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static ThemeInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInherited>();
  }
}
