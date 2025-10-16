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
        appBar: AppBar(
          title: Text("Test"),
          leading: GestureDetector(
            onTap: () => showDialog(
              context: context,
              builder: (context) => exitDialog(),
            ),
            child: Icon(Icons.arrow_back_ios, size: 30, color: Colors.blue),
          ),
        ),
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

  Widget exitDialog() {
    return AlertDialog(
      title: Center(child: Text("종료하시겠습니까?")),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Text(
                  "예",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Text(
                  "아니요",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
