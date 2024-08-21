import 'package:flutter/material.dart';
import 'package:internals/keys/keys.dart';
// import 'package:internals/ui_depends_demo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter internals')),
        body: const Keys(),
      ),
    );
  }
}
