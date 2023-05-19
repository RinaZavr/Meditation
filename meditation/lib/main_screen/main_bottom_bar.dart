import 'package:flutter/material.dart';
import 'package:meditation/consts/string_const.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: _selectIndex == 0 
                ? Image.asset(albumEnableMenuImg, width: 30,) 
                : Image.asset(albumDisableMenuImg, width: 30,),
          label: 'Album',
        ),
        BottomNavigationBarItem(
          icon: _selectIndex == 1 
                ? Image.asset(playlistEnableMenuImg, width: 30,) 
                : Image.asset(playlistDisableMenuImg, width: 30,),
          label: 'Playlist',
        ),
        BottomNavigationBarItem(
          icon: _selectIndex == 2 
                ? Image.asset(playerEnableMenuImg, width: 30,) 
                : Image.asset(playerDisableMenuImg, width: 30,),
          label: 'Player',
        ),
      ],
      currentIndex: _selectIndex,
      backgroundColor: Colors.grey,
    );
  }
}