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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            postContainer(title: "title1", colorName: Colors.yellow),
            postContainer(title: "title2", colorName: Colors.red),
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
