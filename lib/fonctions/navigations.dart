import 'package:flutter/material.dart';
import '../ui/endgame.dart';
import '../ui/menu.dart';
import '../ui/game.dart';

void menu(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const MenuScreen()));
}

void game(BuildContext context, int categorie) async {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => GameScreen(
      categorie:categorie
    )
  ));
}

void victoire(BuildContext context, String mot) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EndScreen(fin: 'Victoire', mot: mot)));
}

void gameover(BuildContext context, String mot) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EndScreen(fin: 'Game Over', mot: mot)));
}
