import 'package:flutter/material.dart';
import '../Base_de_donnees/Database.dart';
import 'dart:math';
import '../ui/endgame.dart';
import '../ui/menu.dart';
import '../ui/game.dart';

void menu(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const MenuScreen()));
}

void game(BuildContext context, int liste) {
  Random random = Random();

  int number = random.nextInt(
    listeprincipal.principalliste[liste].menuliste.length
  );
  List<String> pendu = List.generate(
    listeprincipal.principalliste[liste].menuliste[number].liste.length, (index) => '_'
  ).toList();

  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => GameScreen(number:number, pendu:pendu)));
}

void victoire(BuildContext context, List<String> pendu) {
  for (int i = 0; i < pendu.length; i++) {
    if (pendu[i] == '_') {
      return;
    }
  }
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const EndScreen(fin: 'Victoire')));
}

void gameover(BuildContext context, List<String> pendu) {
  for (int i = 0; i < pendu.length; i++) {
    if (pendu[i] == '_') {
      return;
    }
  }
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const EndScreen(fin: 'Game Over')));
}
