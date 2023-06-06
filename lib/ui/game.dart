import 'package:flutter/material.dart';
import 'dart:math';
import '../Base_de_donnees/database.dart';
import '../fonctions/navigations.dart';

class GameScreen extends StatefulWidget {
  int categorie = 0;

  GameScreen(
      {super.key,
      required this.categorie});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<int> listeCategorie = [];
  Random random = Random();
  List<int> categorieNumber = [];
  int number = 0;
  List<String> liste = [];
  List<String> pendu = [];
  String mot = '';
  int compteurVictoire = 0;
  int compteurDefaite = 0;

  @override
  void initState() {
    super.initState();
    loadDataCategorie();
  }

  Future<void> loadDataCategorie() async {
    List<int> result = await jsonCategorie();
    setState(() {
      categorieNumber = result.toList();
      number = random.nextInt(
        categorieNumber.where((number) => number == widget.categorie).length
      );

      loadDataMots(number);
    });
  }

  Future<void> loadDataMots(int number) async {
    List<String> result = await jsonMots(number, widget.categorie);
    setState(() {
      liste = result[0].split('');
      pendu = List.generate(
        liste.length,
        (index) => (liste[index] == '-') ? '-' : '_',
      ).toList();
      compteurVictoire = pendu.where((element) => element != '-').length;
      mot = liste.join('');
    });
  }

  Widget buildKeyboardButton(String buttonText) {
    return TextButton(
      onPressed: () {
        setState(() {
          int compteur = 0;
          for (int i = 0; i < liste.length; i++) {
            if (liste[i] == buttonText && pendu[i] == '_') {
              pendu[i] = liste[i];
              compteurVictoire--;
            }
            else {
              compteur++;
            }

            if (compteurVictoire == 0) {
              victoire(context, mot);
            }
          }
          if (compteur == liste.length) {
            compteurDefaite++;
          }
          if (compteurDefaite == 6) {
            gameover(context, mot);
          }
        });
      },
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 152, 248),
        title: const Text('Jeu du Pendu'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 141, 205, 255),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(_getTittleText(widget.categorie),
                        style: const TextStyle(fontSize: 20.0)),
                  ),
                  Expanded(
                    flex: 3,
                    child: _getImagePendu(compteurDefaite),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    pendu.join(' '),
                    style: const TextStyle(fontSize: 44.0),
                  ),
                )),
            Expanded(
              child: GridView.count(
                crossAxisCount: 13,
                children: List.generate(alphabet.length, (index) {
                  return buildKeyboardButton(alphabet[index]);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String _getTittleText(int index) {
  switch (index) {
    case 0:
      return 'mots simples';
    case 1:
      return 'mots moyens';
    case 2:
      return 'mots difficiles';
    case 3:
      return 'Vtubers';
    case 4:
      return 'Liste perso';
    default:
      return "";
  }
}

Image _getImagePendu(int index) {
  switch (index) {
    case 0:
      return Image.asset('lib/Base_de_donnees/Images/Pendu1.png');
    case 1:
      return Image.asset('lib/Base_de_donnees/Images/Pendu2.png');
    case 2:
      return Image.asset('lib/Base_de_donnees/Images/Pendu3.png');
    case 3:
      return Image.asset('lib/Base_de_donnees/Images/Pendu4.png');
    case 4:
      return Image.asset('lib/Base_de_donnees/Images/Pendu5.png');
    case 5:
      return Image.asset('lib/Base_de_donnees/Images/Pendu6.png');
    default:
      return Image.asset('lib/Base_de_donnees/Images/Pendu7.png');
  }
}