import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: TestView()));
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  late SharedPreferences _preferences;
  String _username = "";

  final TextEditingController userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getUsername();
  }

  _saveUsername() {
    setState(() {
      _username = userIdController.text;
      _preferences.setString("currentUsername", userIdController.text);
    });
  }

  _getUsername() async {
    _preferences = await SharedPreferences.getInstance();

    setState(
      () => _username = _preferences.getString("currentUsername") ?? "Not set",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Text("Current Username: $_username"),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  controller: userIdController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Input your username",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _saveUsername(),
                child: Container(
                  color: Colors.blue,

                  padding: EdgeInsets.all(15),
                  child: Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
