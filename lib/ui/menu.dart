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
            const Center(child: Text("Choix de la liste")),
            for (int i = 0; i < listeprincipal.principalliste.length; i++)
              ElevatedButton(
                onPressed: () {
                  game(context, listeprincipal.principalliste[i].menuliste);
                },
                child: Text(listeprincipal.principalliste[i].name),
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
