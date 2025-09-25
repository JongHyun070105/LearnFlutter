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
          child: Column(
            children: [
              Text(
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

              // 밑줄
              Text(
                "안녕하세요",
                style: TextStyle(
                  fontSize: 60,
                  decoration: TextDecoration.underline,
                ),
              ),

              // 윗줄
              Text(
                "안녕하세요",
                style: TextStyle(
                  fontSize: 60,
                  decoration: TextDecoration.overline,
                ),
              ),

              // 취소선
              Text(
                "안녕하세요",
                style: TextStyle(
                  fontSize: 60,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
