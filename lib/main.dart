import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundName) {
    final player = AudioCache();
    player.play('note$soundName.wav');
  }

  Expanded buttons({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttons(color: Colors.red, soundNumber: 1),
              buttons(color: Colors.blue, soundNumber: 2),
              buttons(color: Colors.green, soundNumber: 3),
              buttons(color: Colors.yellow, soundNumber: 4),
              buttons(color: Colors.pinkAccent, soundNumber: 5),
              buttons(color: Colors.purple, soundNumber: 6),
              buttons(color: Colors.orangeAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
