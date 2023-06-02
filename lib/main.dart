import 'package:flutter/material.dart';
import 'Base_de_donnees/Database.dart';
import 'ui/game.dart';
import 'ui/menu.dart';

void main() {
  test();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pendu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}
