import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Flexible(flex: 3, child: Container(color: Colors.blue)),
              Flexible(flex: 1, child: Container(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
