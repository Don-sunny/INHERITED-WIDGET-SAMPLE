import 'package:flutter/material.dart';
import 'package:inherited_widget/providers/counter_provider.dart';
import 'package:inherited_widget/screens/widget/display_count.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return CounterProviderWrapper(
        counter: 10,
        child: Scaffold(
          body: DisplayCounterWidget(),
        ));
  }
}
