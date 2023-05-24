import 'package:flutter/material.dart';

class MainState extends ChangeNotifier {
  int selectIndex = 0;
  List currentAudioData = [];
  // bool isPlaying = false;
  String choiceTracks = "";

  void changeIndex(int index) {
    selectIndex = index;

    notifyListeners();
  }

  void changeCurrentAudioData(List audioData) {
    currentAudioData = audioData;

    notifyListeners();
  }

  // void changePlayOrStop(bool isPlayTrack) {
  //   isPlaying = isPlayTrack;

  //   notifyListeners();
  // }

  void changeAlbumOrPlaylist(String choice) {
    choiceTracks = choice;

    notifyListeners();
  }
}