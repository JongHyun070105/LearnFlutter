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
              GestureDetector(
                // 한번 탭 했을 때 실행할 함수
                onTap: () {
                  print("on Tap");
                },

                // 두번 탭 했을 때 실행할 함수
                onDoubleTap: () {
                  print("on Double Tap");
                },
                // 길게 눌렀을 때 실행할 함수
                onLongPress: () => print("on Long Press"),

                // 적용 시킬 컨테이너
                child: Container(
                  decoration: BoxDecoration(color: Colors.red),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
