import 'package:flutter/material.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/main_screen/album_screen/view/album_card_template.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
      ),
      body: const Column(
        children: [
          AlbumCardTemplate(meditationSleepTitle, meditationSleepSubtitle),
          AlbumCardTemplate(meditationEveryDayTitle, meditationEveryDaySubtitle),
          AlbumCardTemplate(meditationStressTitle, meditationStressSubtitle),
        ],
      ),
    );
  }
}