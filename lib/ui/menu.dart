import 'package:flutter/material.dart';
import '../fonctions/navigations.dart';
import '../Base_de_donnees/database.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    test();
    //test2();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Color.fromARGB(255, 25, 152, 248),
      ),
      body: Container(
        color: const Color.fromARGB(255, 141, 205, 255),
        child: Column(
          children: [
            const Center(
                child: Text("Choix de la liste",
                    style: TextStyle(
                      fontSize: 20, // Taille du texte
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Couleur du texte
                      fontWeight: FontWeight.bold, // Gras
                    ))),
            for (int i = 0; i < listeprincipal.principalliste.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    game(context, listeprincipal.principalliste[i].menuliste);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 82, 175, 252), // Couleur de fond du bouton
                  ),
                  child: Text(
                    listeprincipal.principalliste[i].name,
                    style: TextStyle(
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
