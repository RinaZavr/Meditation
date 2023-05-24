import 'package:flutter/material.dart';
import 'package:meditation/consts/list_consts.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/main_screen/album_screen/view/album_list_tracks.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';

class AlbumCardTemplate extends StatelessWidget {
  final String _title;
  final String _subtitle;

  const AlbumCardTemplate(this._title, this._subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    MainState state = Provider.of<MainState>(context);

    return Card(
      child: ListTile(
        leading: Icon(
          Icons.album,
          color: Colors.orange[200],
        ),
        title: Text(_title),
        subtitle: Text(_subtitle),
        onTap: () {
          state.changeAlbumOrPlaylist(labelAlbum);
          Navigator.push(
            context, 
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                if(_title == meditationSleepTitle) {
                  return AlbumListTracks(
                    audiosSleep,
                    _title
                  );
                }
                if(_title == meditationEveryDayTitle) {
                  return AlbumListTracks(
                    audiosDay,
                    _title
                  );
                }
                if(_title == meditationStressTitle) {
                  return AlbumListTracks(
                    audiosStress,
                    _title
                  );
                }
                return const Placeholder();
              }
            ),
          );
        }
      ),
    );
  }
}