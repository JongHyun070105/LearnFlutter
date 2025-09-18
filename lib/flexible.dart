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
          child: Column(
            // 주축 정렬 지정
            mainAxisAlignment: MainAxisAlignment.center,

            // 반대축 정렬 지정
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // flex는 남은 공간을 차지할 비율 지정 안하면 1임
              Flexible(flex: 1, child: Container(color: Colors.blue)),
              Flexible(child: Container(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
