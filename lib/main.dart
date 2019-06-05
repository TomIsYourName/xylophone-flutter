import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Click And Play',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            _buildKey(color: Colors.red, audioNumber: 1),
            _buildKey(color: Colors.orange, audioNumber: 2),
            _buildKey(color: Colors.yellow, audioNumber: 3),
            _buildKey(color: Colors.green, audioNumber: 4),
            _buildKey(color: Colors.blue, audioNumber: 5),
            _buildKey(color: Colors.cyan, audioNumber: 6),
            _buildKey(color: Colors.purple, audioNumber: 7),
          ],
        ),
      ),
    );
  }

  Widget _buildKey({Color color, int audioNumber}) {
    return FlatButton(
      color: color,
      onPressed: () {
        playAudio(audioNumber);
      },
    );
  }

  void playAudio(int audioNumber) {
    AssetsAudioPlayer player = AssetsAudioPlayer();
    player.open(AssetsAudio(
      asset: 'note$audioNumber.wav',
      folder: 'assets',
    ));
    player.play();
  }
}
