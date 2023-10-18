import 'package:flutter/material.dart';

class CounterProviderWrapper extends StatefulWidget {
  final Widget child;
  final int counter;
  const CounterProviderWrapper({
    Key? key,
    required this.child,
    this.counter = 0,
  }) : super(key: key);

  static CounterProviderWrapperState of(BuildContext context, {listen = true}) {
    return listen
        ? context.dependOnInheritedWidgetOfExactType<CounterProvider>()!.data
        : context.findAncestorWidgetOfExactType<CounterProvider>()!.data;
  }

  @override
  CounterProviderWrapperState createState() => CounterProviderWrapperState();
}

class CounterProviderWrapperState extends State<CounterProviderWrapper> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = widget.counter;
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: widget.child,
      data: this,
      counter: counter,
    );
  }
}

// ignore: must_be_immutable
class CounterProvider extends InheritedWidget {
  CounterProvider(
      {Key? key,
      required this.child,
      required this.counter,
      required this.data})
      : super(key: key, child: child);

  final Widget child; // dude helps in widget tree
  final int counter; // gives counter, good guy imo
  CounterProviderWrapperState data;

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return counter != oldWidget.counter;
  }
}
