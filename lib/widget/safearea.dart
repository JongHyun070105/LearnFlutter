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
          top: true,
          bottom: true,
          right: true,
          left: true,
          child: Container(color: Colors.red, height: 300, width: 300),
        ),
      ),
    );
  }
}
