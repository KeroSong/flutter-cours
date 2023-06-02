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
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      body: SafeArea(
        child: Column(
          children: [
            const Center(child: Text("salut")),
            for (int i = 0; i < listeprincipal.principalliste.length; i++)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(listeprincipal.principalliste[i].name),
              ),
          ],
        ),
      ),
    );
  }
}