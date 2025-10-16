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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 12,
          ),
          children: [
            postContainer(title: "Title 1", colorName: Colors.amber),
            postContainer(title: "Title 2", colorName: Colors.blue),
            postContainer(title: "Title 3", colorName: Colors.red),
            postContainer(title: "Title 4", colorName: Colors.lightGreen),
            postContainer(title: "Title 5", colorName: Colors.purpleAccent),
            postContainer(title: "Title 6", colorName: Colors.indigoAccent),
            postContainer(title: "Title 7", colorName: Colors.deepOrangeAccent),
            postContainer(title: "Title 8", colorName: Colors.greenAccent),
          ],
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
      height: 200,
      child: Column(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            child: Text(title),
          ),
          Container(height: 140, color: colorName),
        ],
      ),
    );
  }
}
