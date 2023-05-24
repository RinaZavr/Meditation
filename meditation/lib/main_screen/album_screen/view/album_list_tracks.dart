import 'package:flutter/material.dart';
import 'package:meditation/main_screen/album_screen/view/album_track_template.dart';

class AlbumListTracks extends StatelessWidget {
  final List _audioUrls;
  final String _title;

  const AlbumListTracks(this._audioUrls, this._title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.orange[100],
      ),
      body: Column(
        children: [
          AlbumTrackTemplate(_audioUrls[0]),
          AlbumTrackTemplate(_audioUrls[1]),
          AlbumTrackTemplate(_audioUrls[2]),
        ],
      ),
      // body: PageView.builder(
      //   scrollDirection: Axis.vertical,
      //   itemCount: _audioUrls.length,
      //   itemBuilder: (context, index) {
      //     return AlbumTrackTemplate(_audioUrls[index]);
      //   },
      // ),
    );
  }
}