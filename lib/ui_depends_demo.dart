import 'package:flutter/material.dart';
import 'package:internals/demo_buttons.dart';

class UIUpdatesDemo extends StatelessWidget {
  const UIUpdatesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    print('UIUpdateDemo BUILD called');

    return const Padding(
      padding: EdgeInsets.all(8),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Every flutter developer should have a basic understanding of Flutter\'s internals',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Do you understand how flutter updates UI?',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          DemoButtons(),
        ],
      )),
    );
  }
}
