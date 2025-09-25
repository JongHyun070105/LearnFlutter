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
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: Text('텍스트 버튼'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(foregroundColor: Colors.green),
                child: Text("아웃 라인이 있는 텍스트 버튼"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("엘리베이티드 버튼", style: TextStyle(color: Colors.white)),
              ),
              // https://fonts.google.com/icons 여기서 아이콘 종류 확인 가능
              IconButton(onPressed: () {}, icon: Icon(Icons.ballot)),
            ],
          ),
        ),
      ),
    );
  }
}
