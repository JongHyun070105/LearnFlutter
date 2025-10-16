import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  static String youtubeID = '4AoFA19gbLo';

  final YoutubePlayerController _con = YoutubePlayerController(
    initialVideoId: youtubeID,
    flags: const YoutubePlayerFlags(autoPlay: true, mute: true),
  );

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

        body: YoutubePlayer(controller: _con),
      ),
    );
  }
}
