import 'package:flutter/material.dart';
import '../fonctions/navigations.dart';
import '../Base_de_donnees/database.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<int> listeCategorie = [];

  @override
  void initState() {
    super.initState();
    loadDataCategorie();
  }

  Future<void> loadDataCategorie() async {
    List<int> result = await jsonCategorie();
    setState(() {
      listeCategorie = result.toSet().toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: const Color.fromARGB(255, 25, 152, 248),
      ),
      body: Container(
        color: const Color.fromARGB(255, 141, 205, 255),
        child: Column(
          children: [
            const Center(
                child: Text("Choix de la liste",
                    style: TextStyle(
                      fontSize: 20, // Taille du texte
                      color: Color.fromARGB(255, 255, 255, 255), // Couleur du texte
                      fontWeight: FontWeight.bold, // Gras
                    )
                )
            ),
            for (int i = 0; i < listeCategorie.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    switch (i) {
                      case 0:
                        game(context, i);
                        break;
                      case 1:
                        game(context, i);
                        break;
                      case 2:
                        game(context, i);
                        break;
                      case 3:
                        game(context, i);
                        break;
                      case 4:
                        game(context, i);
                        break;
                      default:
                        break;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 82, 175, 252), // Couleur de fond du bouton
                  ),
                  child: Text(
                    _getButtonText(i),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

String _getButtonText(int index) {
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