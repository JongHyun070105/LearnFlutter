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
  final postList = [
    {"title": "Title 1", "color": Colors.yellow},
    {"title": "Title 2", "color": Colors.blue},
    {"title": "Title 3", "color": Colors.black},
  ];

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
        body: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (BuildContext context, int index) {
            return postContainer(
              title: postList[index]["title"] as String,
              colorName: postList[index]["color"] as dynamic,
            );
          },
        ),
      ),
    );
  }

  SizedBox postContainer({
    String title = "Title",
    Color colorName = Colors.black,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 270,
      child: Column(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16),
            child: Text(title),
          ),
          Container(height: 230, color: colorName),
        ],
      ),
    );
  }
}
