import 'package:flutter/material.dart';
import 'package:meditation/consts/list_consts.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/main_screen/album_screen/view/album_track_template.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(labelPlaylist,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.orange[100],
      ),
      body: Column(
        children: [
          AlbumTrackTemplate(audiosSleep[0]),
          AlbumTrackTemplate(audiosSleep[1]),
          AlbumTrackTemplate(audiosSleep[2]),
          AlbumTrackTemplate(audiosStress[0]),
          AlbumTrackTemplate(audiosStress[1]),
          AlbumTrackTemplate(audiosStress[2]),
          AlbumTrackTemplate(audiosDay[0]),
          AlbumTrackTemplate(audiosDay[1]),
          AlbumTrackTemplate(audiosDay[2]),
        ],
      ),
    );
  }
}