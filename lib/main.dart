import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Builder'),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200 : 300,
                  height: selected ? 200 : 300,
                  color: selected ? Colors.blue : Colors.red,
                  duration: const Duration(seconds: 3),
                  child: const FlutterLogo(size: 75),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
