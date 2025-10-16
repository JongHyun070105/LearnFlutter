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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.orange,
              ),
            ],
          ),
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
