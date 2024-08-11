import 'package:flutter/material.dart';

class UIUpdatesDemo extends StatefulWidget {
  const UIUpdatesDemo({super.key});

  @override
  StatefulElement createElement() {
    print('UIUpdateDemo CREATEELEMENT called');
    return super.createElement();
  }

  @override
  State<UIUpdatesDemo> createState() => _UIUpdatesDemoState();
}

class _UIUpdatesDemoState extends State<UIUpdatesDemo> {
  bool _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    print('UIUpdateDemo BUILD called');

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Every flutter developer should have a basic understanding of Flutter\'s internals',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Do you understand how flutter updates UI?',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = false;
                    });
                  },
                  child: const Text('No')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = true;
                    });
                  },
                  child: const Text('Yes'))
            ],
          ),
          if (_isUnderstood) const Text('Awesome!')
        ],
      )),
    );
  }
}
