import 'package:flutter/material.dart';
import 'dart:math';
import '../Base_de_donnees/Database.dart';
import '../ui/endgame.dart';
import '../ui/menu.dart';
import '../ui/game.dart';
import '../Modeles/liste_lettres.dart';

void menu(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const MenuScreen()));
}

void game(BuildContext context, List<ListeLettre> liste) {
  Random random = Random();

  int number = random.nextInt(
    liste.length
  );

  List<String> pendu = List.generate(
    liste[number].liste.length, (index) => '_'
  ).toList();

  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => GameScreen(
      number:number, liste:liste, pendu:pendu
    )
  ));
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
