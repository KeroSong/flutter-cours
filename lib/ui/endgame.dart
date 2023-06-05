import 'package:flutter/material.dart';
import '../fonctions/navigations.dart';

class EndScreen extends StatefulWidget {
  final String fin;

  const EndScreen({super.key, required this.fin});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fin de jeu."),
        backgroundColor: Color.fromARGB(255, 25, 152, 248),
      ),
      body: Container(
        color: const Color.fromARGB(255, 141, 205, 255),
        child: Column(
          children: [
            Center(child: Text(widget.fin)),
            ElevatedButton(
                onPressed: () {
                  menu(context);
                },
                child: const Text("Retour au Menu"))
          ],
        ),
      ),
    );
  }
}
