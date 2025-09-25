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
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // 다른 위젯을 담는 데 사용
                decoration: BoxDecoration(
                  // 색상 지정
                  color: Colors.blue,

                  // 테두리 적용 (색과 크기)
                  border: Border.all(width: 20, color: Colors.pink),

                  // 테두리 둥글기 적용
                  borderRadius: BorderRadius.circular(16),
                ),
                // 컨테이너 크기 지정
                height: 200,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
