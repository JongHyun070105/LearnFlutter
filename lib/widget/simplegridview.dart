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
    {"title": "Title 1", "color": Colors.amber},
    {"title": "Title 2", "color": Colors.blue},
    {"title": "Title 3", "color": Colors.red},
    {"title": "Title 4", "color": Colors.lightGreen},
    {"title": "Title 5", "color": Colors.purpleAccent},
    {"title": "Title 6", "color": Colors.indigoAccent},
    {"title": "Title 7", "color": Colors.deepOrangeAccent},
    {"title": "Title 8", "color": Colors.greenAccent},
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
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 12,
          ),
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
