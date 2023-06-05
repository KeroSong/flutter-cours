import 'package:flutter/material.dart';
import '../Base_de_donnees/Database.dart';
import '../fonctions/navigations.dart';
import '../Modeles/liste_lettres.dart';

class GameScreen extends StatefulWidget {
  int number = 0;
  List<ListeLettre> liste = [];
  List<String> pendu = [];

  GameScreen(
      {super.key,
      required this.number,
      required this.liste,
      required this.pendu});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  Widget buildKeyboardButton(String buttonText) {
    return TextButton(
      onPressed: () {
        setState(() {
          for (int i = 0; i < widget.liste[widget.number].liste.length; i++) {
            if (widget.liste[widget.number].liste[i] == buttonText) {
              widget.pendu[i] = widget.liste[widget.number].liste[i];
              // print(listeprincipal.principalliste[0].menuliste.length);
              // print(listeprincipal.principalliste[0].menuliste[1].liste);
              // print(listeprincipal.principalliste[0].menuliste[2].liste);
            }
            victoire(context, widget.pendu);
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
        backgroundColor: Color.fromARGB(255, 25, 152, 248),
        title: const Text('Demo Pendu'),
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
                    child: Text(listeprincipal.principalliste[0].name,
                        style: const TextStyle(fontSize: 20.0)),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.green,
                      height: 150,
                      width: 170,
                      child:
                          Image.asset('lib/Base_de_donnees/Images/Pendu1.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    widget.pendu.join(' '),
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
            /*const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
