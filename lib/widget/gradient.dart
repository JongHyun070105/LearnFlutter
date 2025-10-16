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
        appBar: AppBar(title: Text("Test")),
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            // 선형 그라데이션
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     Colors.blue[100] as Color,
            //     Colors.blue[300] as Color,
            //     Colors.blue[500] as Color,
            // ],

            // 원형 그라데이션
            gradient: RadialGradient(
              center: Alignment.center,
              colors: [
                Colors.blue.shade100,
                Colors.blue[300] as Color,
                Colors.blue[500] as Color,
              ],
              stops: [0.1, 0.5, 1.0], // 동심원 크기 지정
            ),
          ),
        ),
      ),
    );
  }
}
