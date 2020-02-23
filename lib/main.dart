import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons(),
          ),
        ),
      ),
    );
  }

  List<Expanded> buttons() {
    List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple,
    ];

    List<Expanded> l = [];
    for (int i = 1; i < 8; ++i) {
      FlatButton fb = FlatButton(
        color: colors[i - 1],
        onPressed: () {
          final player = AudioCache();
          player.play('note$i.wav');
        },
      );
      l.add(Expanded(child: fb));
    }
    return l;
  }
}
