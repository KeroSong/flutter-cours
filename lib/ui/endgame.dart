import 'package:flutter/material.dart';
import '../fonctions/navigations.dart';

class EndScreen extends StatefulWidget {
  final String fin;
  final String mot;

  const EndScreen(
    {super.key,
    required this.fin,
    required this.mot});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fin de jeu"),
        backgroundColor: const Color.fromARGB(255, 25, 152, 248),
      ),
      body: Container(
        color: const Color.fromARGB(255, 141, 205, 255),
        child: Column(
          children: [
            Center(
              child: Text(widget.fin,
                style: const TextStyle(
                  fontSize: 20, // Taille du texte
                  color: Color.fromARGB(255, 255, 255, 255), // Couleur du texte
                  fontWeight: FontWeight.bold, // Gras
                )
              )
            ),
            const Center(
              child: Text('Le mot était :'),
            ),
            Center(
              child: Text(widget.mot,
                style: const TextStyle(
                  fontSize: 30, // Taille du texte
                  color: Color.fromARGB(255, 255, 255, 255), // Couleur du texte
                  fontWeight: FontWeight.bold, // Gras
                )
              ),
            ),
            Center(
              child: _getImageEnd(widget.fin),
            ),
            const Center(
              child: Text(''),
            ),
            ElevatedButton(
                onPressed: () {
                  menu(context);
                },
                child: const Text("Retour au Menu")
            )
          ],
        ),
      ),
    );
  }
}

Image _getImageEnd(String index) {
  switch (index) {
    case 'Victoire':
      return Image.asset('lib/Base_de_donnees/Images/Pendu1.png');
    default:
      return Image.asset('lib/Base_de_donnees/Images/Pendu7.png');
  }
}
