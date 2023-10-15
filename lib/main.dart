import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache audioPlayer = AudioCache();
  void PlaySound(int SoundNumber){

    final player = AudioPlayer();
    player.play(AssetSource('note$SoundNumber.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}){
    return Expanded(child: SizedBox(
      width: 400, // Set the desired width here
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          if (soundNumber != null)
           PlaySound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color, // Set the button background color to yellow
        ),
        child: SizedBox.shrink(), // An empty SizedBox to remove the text
      ),
    ),
    );

}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Xylophone"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Column(
            children: [
              // Add your widgets here
              //SizedBox(height: 50),
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
