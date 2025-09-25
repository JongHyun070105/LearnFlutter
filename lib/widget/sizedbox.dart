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
              SizedBox(
                // 일정 크기의 공간을 공백으로 두고 싶을 때 사용
                height: 200,
                width: 200,

                // SizedBox는 색 지정하는게 없어서 Container를 이용해 크기 확인
                child: Container(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
