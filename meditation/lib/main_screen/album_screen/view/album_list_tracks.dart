import 'package:flutter/material.dart';
import 'package:meditation/main_screen/album_screen/view/album_track_template.dart';

class AlbumListTracks extends StatelessWidget {
  final List _audioUrls;

  const AlbumListTracks(this._audioUrls, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _audioUrls.length,
        itemBuilder: (context, index) {
          return AlbumTrackTemplate(_audioUrls[index]);
        },
      ),
    );
  }
}