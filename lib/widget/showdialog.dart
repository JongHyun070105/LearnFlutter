import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text("Test Title")),

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
          child: Center(
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,

                  barrierDismissible: false,

                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Dialog Title"),

                      content: SingleChildScrollView(
                        child: ListBody(children: [Text("Dialog Content")]),
                      ),

                      actions: [
                        TextButton(
                          child: Text('Close'),

                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                  },
                );
              },

              child: Container(width: 150, height: 150, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
