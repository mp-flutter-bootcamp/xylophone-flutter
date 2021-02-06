import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneKey extends StatelessWidget {
  final Color color;
  final String sound;

  XylophoneKey(this.color, this.sound);

  void playSound() {
    final player = AudioCache();
    player.play(sound);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: playSound,
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylophoneKey(Colors.red, 'note1.wav'),
              XylophoneKey(Colors.orange, 'note2.wav'),
              XylophoneKey(Colors.yellow, 'note3.wav'),
              XylophoneKey(Colors.green, 'note4.wav'),
              XylophoneKey(Colors.teal, 'note5.wav'),
              XylophoneKey(Colors.blue, 'note6.wav'),
              XylophoneKey(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
