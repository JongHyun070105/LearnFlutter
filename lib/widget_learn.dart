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
        body: Center(
          child: Text(
            '안녕하세요',
            style: TextStyle(
              // 글자 크기
              fontSize: 60,

              // 글자 두께
              fontWeight: FontWeight.w800,

              // 글자 색
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
