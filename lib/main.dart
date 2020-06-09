import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  void sound(int number) {
    final player = AudioCache();
    player.play('sound$number.wav');
  }

  Expanded buttonKey({Color color, int number, Text text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(number);
        },
        child: text,
        textColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonKey(
                color: Colors.green,
                number: 1,
                text: Text('Do'),
              ),
              buttonKey(
                color: Colors.yellow,
                number: 2,
                text: Text('Re'),
              ),
              buttonKey(
                color: Colors.orange,
                number: 3,
                text: Text('Mi'),
              ),
              buttonKey(
                color: Colors.red,
                number: 4,
                text: Text('Fa'),
              ),
              buttonKey(
                color: Colors.purple,
                number: 5,
                text: Text('Sol'),
              ),
              buttonKey(
                color: Colors.blue,
                number: 6,
                text: Text('La'),
              ),
              buttonKey(
                color: Colors.black,
                number: 7,
                text: Text('Si'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}