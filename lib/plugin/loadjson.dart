import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: TestView()));
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  static Future loadJson() async {
    final String response = await rootBundle.loadString(
      'assets/data/studentList.json',
    );

    final data = await json.decode(response);

    return data["students"];
  }

  Future studentList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Title")),

      body: FutureBuilder(
        future: studentList,

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,

              itemBuilder: (BuildContext con, int index) {
                return Container(
                  padding: EdgeInsets.all(15),

                  child: Text(
                    "ID: ${snapshot.data[index]["id"]}, NAME: ${snapshot.data[index]["name"]}, AGE: ${snapshot.data[index]["age"]}",
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error!", style: TextStyle(color: Colors.red)),
            );
          } else {
            return Center(child: CircularProgressIndicator(strokeWidth: 2));
          }
        },
      ),
    );
  }
}
