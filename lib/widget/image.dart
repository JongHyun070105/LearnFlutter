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
            // 경로
            // image: AssetImage('assets/image.png'),
            // fit: BoxFit.fitWidth,

            // 이미지 주소
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/12/10/13/37/christmas-3009949_1280.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
