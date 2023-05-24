import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:meditation/main_screen/state/main_state.dart';
// import 'package:provider/provider.dart';

class PlayerPlayer extends StatefulWidget {
  final List audioData;

  const PlayerPlayer(this.audioData, {super.key});

  @override
  State<PlayerPlayer> createState() => _PlayerPlayerState();
}

class _PlayerPlayerState extends State<PlayerPlayer> {
  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    widget.audioData.isEmpty ? print(':)') : initializer();
  }

  void initializer() async {
    await player.open(
      Audio.network(widget.audioData[1]),
      autoStart: false,
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // MainState state = Provider.of<MainState>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange[200],
          radius: 100,
          child: const Icon(
            Icons.music_note_outlined,
            size: 70,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            widget.audioData.isEmpty ? "" : widget.audioData[0],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all(
                  Colors.orange[200],
                ),
              ),
              onPressed: () async { 
                // state.changePlayOrStop(player.isPlaying.value);
                await player.playOrPause();
              },
              child: player.isPlaying.value
                    ? const Icon(Icons.pause)
                    : const Icon(Icons.play_arrow),
            ),
          ],
        ),
      ],
    );
  }
}