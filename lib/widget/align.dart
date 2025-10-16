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
        appBar: AppBar(title: Text("Learn Dart")),
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
          child: Stack(
            children: [
              // top
              Align(
                alignment: Alignment.topLeft,
                child: Container(width: 100, height: 100, color: Colors.black),
              ),

              Align(
                alignment: Alignment.topCenter,
                child: Container(width: 100, height: 100, color: Colors.red),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),

              // center
              Align(
                alignment: Alignment.centerLeft,
                child: Container(width: 100, height: 100, color: Colors.black),
              ),

              Align(
                alignment: Alignment.center,
                child: Container(width: 100, height: 100, color: Colors.red),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),

              // bottom
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(width: 100, height: 100, color: Colors.black),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(width: 100, height: 100, color: Colors.red),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
