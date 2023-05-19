import 'package:flutter/material.dart';
import 'package:meditation/main_screen/playlist_screen/view/playlist_view.dart';

class AlbumTrackTemplate extends StatelessWidget {
  final List _audioData;
  const AlbumTrackTemplate(this._audioData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.music_note),
        title: Text(_audioData[0]),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const PlaylistView(),
            ),
          );
        }
      ),
    );
  }
}