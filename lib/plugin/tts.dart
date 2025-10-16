import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MaterialApp(home: TestView()));
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  final FlutterTts tts = FlutterTts();
  final TextEditingController con = TextEditingController();

  @override
  void initState() {
    super.initState();

    tts.setLanguage('ko-KR'); // 언어설정
    tts.setSpeechRate(0.5); // 속도설정 (0.0 ~ 1.0)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Container(
        child: Column(
          children: [
            TextField(controller: con),
            TextButton(
              onPressed: () => tts.speak(con.text),
              child: Text("재생버튼"),
            ),
          ],
        ),
      ),
    );
  }
}
