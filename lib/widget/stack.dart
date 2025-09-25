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
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              Container(color: Colors.red, height: 300, width: 300),
              Container(color: Colors.yellow, height: 250, width: 250),
              Container(color: Colors.green, height: 200, width: 200),
            ],
          ),
        ),
      ),
    );
  }
}
