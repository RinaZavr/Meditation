import 'package:flutter/material.dart';
import 'package:meditation/main_screen/main_view.dart';
import 'package:meditation/main_screen/state/main_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainState>(
      create: (context) => MainState(),
      child: const MaterialApp(
        title: 'Meditation',
        home: MainView(),
      ),
    );
  }
}