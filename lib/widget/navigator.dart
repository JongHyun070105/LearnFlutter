import 'package:flutter/material.dart';
import 'package:flutter_learn/screenview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TestView());
  }
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  _TestViewState createState() => _TestViewState();
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

        body: Center(
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ScreenView()),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 40,
              color: Colors.blue,
              child: Text("Get Started!"),
            ),
          ),
        ),
      ),
    );
  }
}
