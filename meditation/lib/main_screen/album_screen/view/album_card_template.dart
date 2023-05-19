import 'package:flutter/material.dart';
import 'package:meditation/consts/list_consts.dart';
import 'package:meditation/main_screen/album_screen/view/album_list_tracks.dart';

class AlbumCardTemplate extends StatelessWidget {
  final String _title;
  final String _subtitle;

  const AlbumCardTemplate(this._title, this._subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.album),
        title: Text(_title),
        subtitle: Text(_subtitle),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const AlbumListTracks(
                audios,
              )
            ),
          );
        }
      ),
    );
  }
}