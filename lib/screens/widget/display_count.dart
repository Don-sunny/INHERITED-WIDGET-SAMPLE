import 'package:flutter/material.dart';
import 'package:inherited_widget/providers/counter_provider.dart';

class DisplayCounterWidget extends StatelessWidget {
  const DisplayCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${CounterProviderWrapper.of(context).counter}'),
          const ButtonWidget(),
          const ThatUselessTextWidget()
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        CounterProviderWrapper.of(context).incrementCounter();
      },
      child: const Text(
        'Increament',
      ),
    );
  }
}

class ThatUselessTextWidget extends StatelessWidget {
  const ThatUselessTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterProviderWrapperState state = CounterProviderWrapper.of(
      context,
      listen: false,
    );
    print('That Useless Text Widget');
    return const Text(
      'That Useless Text widget',
    );
  }
}
