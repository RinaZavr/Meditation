import 'package:flutter/material.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/consts/value_consts.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';

class AlbumTrackTemplate extends StatefulWidget {
  final List _audioData;
  const AlbumTrackTemplate(this._audioData, {super.key});

  @override
  State<AlbumTrackTemplate> createState() => _AlbumTrackTemplateState();
}

class _AlbumTrackTemplateState extends State<AlbumTrackTemplate> {
  @override
  Widget build(BuildContext context) {
    MainState state = Provider.of<MainState>(context);

    return Card(
      child: ListTile(
        leading: Icon(
          Icons.music_note,
          color: Colors.orange[200],
        ),
        title: Text(widget._audioData[0]),
        onTap: () {
          state.changeCurrentAudioData(widget._audioData);
          state.choiceTracks == labelAlbum ? Navigator.pop(context) : print(":)");
          state.changeIndex(playerTabIndex);
        }
      ),
    );
  }
}