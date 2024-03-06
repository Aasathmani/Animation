import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('aasath'),
        ),
        body: Center(
          child: Container(
              color: Colors.red,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    child: AnimatedAlign(
                      alignment:
                          selected ? Alignment.center : Alignment.bottomLeft,
                      duration: Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      child: FlutterLogo(
                        size: 50,
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
