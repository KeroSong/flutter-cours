import 'package:flutter/material.dart';
import 'ui/game.dart';
import 'ui/menu.dart';
import 'Base_de_donnees/database.dart';

void main() {
  /*final testfuture = fetchData();

  testfuture.then((_) {
    print('La fonction asynchrone est terminée');
  }).catchError((error) {
    print('Erreur lors de l\'appel de la fonction asynchrone : $error');
  });*/
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
