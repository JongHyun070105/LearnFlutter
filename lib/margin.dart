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
                // 가장 바깥쪽 컨테이너 생성
                color: Colors.black,

                // 안쪽에 흰색 컨테이너 생성
                child: Container(
                  color: Colors.white,

                  // 상하 좌우 모두 마진 적용
                  margin: EdgeInsets.all(16),

                  // 컨테이너 안에 패딩을 적용
                  child: Padding(
                    // 상하 좌우 모두 패딩 적용
                    padding: EdgeInsets.all(16),

                    // 빨간색 50,50의 컨테이너 생성
                    child: Container(color: Colors.red, width: 50, height: 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
