import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playSound(int soundNumber){ // Play Sound Function ....  //
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(color, noteNumber){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
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
            children: [
              buildKey(Colors.deepPurple.shade100, 1),
              buildKey(Colors.deepPurple.shade200, 2),
              buildKey(Colors.deepPurple.shade300, 3),
              buildKey(Colors.deepPurple.shade400, 4),
              buildKey(Colors.deepPurple.shade500, 5),
              buildKey(Colors.deepPurple.shade600, 6),
              buildKey(Colors.deepPurple.shade700, 7),
            ],
          ),
        ),
      ),
    );
  }
}
