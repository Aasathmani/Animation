import 'package:flutter/material.dart';

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
          title: const Text('Animated cross fade'),
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
                  child: AnimatedCrossFade(
                duration: const Duration(seconds: 3),
                firstChild: const FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild: const FlutterLogo(
                    style: FlutterLogoStyle.stacked, size: 100.0),
                crossFadeState: selected
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
