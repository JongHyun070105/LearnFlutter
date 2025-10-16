import 'package:flutter/material.dart';

void main() {
  runApp(TestView());
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Drawer Header Part"),
              ),
              ListTile(title: Text("Menu 1")),
            ],
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image(
            image: AssetImage('assets/image.png'),
            fit: BoxFit.fitWidth,

            // BoxFit 속성
            // contain: 비율 왜곡시키지 않으면서 Parent 위젯의 범위에 맞게 최대한 확대해서 출력
            // cover: 비율 왜곡시키지 않으면서 Parent 위젯을 전부 채울 수 있을 정도로만 축소하여 출력
            // fill: 이미지를 Parent 범위에 가득 채움. 필요하면 비율을 변형해서도 출력
            // fitHeight: Parent 위젯의 height에 이미지 높이를 그대로 맞춤. 비율은 손상시키지 않음
            // fitWidth: Parent 위젯의 width에 이미지 넓이를 그대로 맞춤. 비율은 손상시키지 않음
            // scaleDown: Parent 위젯의 범위에 맞게 이미지의 크기를 줄여서 출력. 비율은 손상시키지 않음
            // none: Parent 위젯 범위 안에 이미지를 정렬하고 이미지가 범위를 초과하면 그 벗어난 부분은 무시하고 출력
          ),
        ),
      ),
    );
  }
}
