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
      appBar: AppBar(title: const Text("Fin de jeu.")),
      body: SafeArea(
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
