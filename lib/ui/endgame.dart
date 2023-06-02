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
      appBar: AppBar(title: const Text("Fin du jeu")),
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Text(widget.fin)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Menu"))
          ],
        ),
      ),
    );
  }
}
