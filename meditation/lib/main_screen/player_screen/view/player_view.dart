import 'package:flutter/material.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/main_screen/player_screen/view/player_player.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';
class PlayerView extends StatefulWidget {
  const PlayerView({super.key});

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {

  @override
  Widget build(BuildContext context) {
    MainState state = Provider.of<MainState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          labelPlayer,
          style: TextStyle(
              color: Colors.black,
          ),
        ),
        backgroundColor: Colors.orange[100],
      ),
      body: PlayerPlayer(state.currentAudioData),
    );
  }
}