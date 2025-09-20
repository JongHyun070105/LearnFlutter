import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: const StfColorTile(), // Key 추가
      ),
      Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: const StfColorTile(), // Key 추가
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(children: tiles)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tiles.insert(1, tiles.removeAt(0));
          });
        },
        child: const Icon(Icons.sentiment_very_satisfied),
      ),
    );
  }
}

class StfColorTile extends StatefulWidget {
  const StfColorTile({super.key});
  @override
  State<StfColorTile> createState() => _StfColorTileState();
}

class _StfColorTileState extends State<StfColorTile> {
  late Color color;

  @override
  void initState() {
    super.initState();
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Padding(padding: EdgeInsets.all(60)),
    );
  }
}
