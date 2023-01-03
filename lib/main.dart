import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sound: 'note1'),
              buildKey(color: Colors.orange, sound: 'note2'),
              buildKey(color: Colors.yellow, sound: 'note3'),
              buildKey(color: Colors.green, sound: 'note4'),
              buildKey(color: Colors.teal, sound: 'note5'),
              buildKey(color: Colors.blue, sound: 'note6'),
              buildKey(color: Colors.purple, sound: 'note7'),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({required Color color, required String sound}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          Audio.load('assets/$sound.wav').play();
        },
        child: null,
      ),
    );
  }
}
