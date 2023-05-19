import 'package:flutter/material.dart';
import 'package:meditation/consts/list_consts.dart';
import 'package:meditation/main_screen/main_bottom_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetSelect.elementAt(0),
      bottomNavigationBar: const MainBottomBar(),
    );
  }
}