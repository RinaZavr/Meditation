import 'package:flutter/material.dart';
import 'package:meditation/consts/list_consts.dart';
import 'package:meditation/main_screen/main_bottom_bar.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    MainState state = Provider.of<MainState>(context);

    return Scaffold(
      body: widgetSelect.elementAt(state.selectIndex),
      bottomNavigationBar: const MainBottomBar(),
    );
  }
}