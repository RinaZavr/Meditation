import 'package:flutter/material.dart';
import 'package:meditation/consts/string_const.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  @override
  Widget build(BuildContext context) {
    MainState state = Provider.of<MainState>(context);
    int selectIndex = state.selectIndex;

    return BottomNavigationBar(
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: selectIndex == 0 
                ? Image.asset(albumEnableMenuImg, width: 30,) 
                : Image.asset(albumDisableMenuImg, width: 30,),
          label: 'Album',
        ),
        BottomNavigationBarItem(
          icon: selectIndex == 1 
                ? Image.asset(playlistEnableMenuImg, width: 30,) 
                : Image.asset(playlistDisableMenuImg, width: 30,),
          label: 'Playlist',
        ),
        BottomNavigationBarItem(
          icon: selectIndex == 2 
                ? Image.asset(playerEnableMenuImg, width: 30,) 
                : Image.asset(playerDisableMenuImg, width: 30,),
          label: 'Player',
        ),
      ],
      currentIndex: selectIndex,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.orange[100],
      selectedLabelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      onTap: (int index) {
        state.changeIndex(index);
        if(index == 1) {
          state.changeAlbumOrPlaylist(labelPlaylist);
        }
      },
    );
  }
}