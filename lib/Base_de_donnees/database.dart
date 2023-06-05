import 'package:flutter/material.dart';
// import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import '../Modeles/liste_principal.dart';
import '../Modeles/liste_listes.dart';
import '../Modeles/liste_lettres.dart';
import '../Modeles/mots.dart';


final List<String> alphabet = [
  'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
  'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
];

var listeprincipal = ListePrincipal.createState(
  ListeListes.createState(
    0, 'mots simples', ListeLettre.createState(
      0, 'Chat'
    )
  )
);

void test () {
  listeprincipal.principalliste[0].ajouter('Chien');
  listeprincipal.principalliste[0].ajouter('Maison');
  listeprincipal.principalliste[0].ajouter('Soleil');
  listeprincipal.principalliste[0].ajouter('Pomme');
  listeprincipal.principalliste[0].ajouter('Arbre');
  listeprincipal.principalliste[0].ajouter('Ecole');
  listeprincipal.principalliste[0].ajouter('Livre');
  listeprincipal.principalliste[0].ajouter('Voiture');
  listeprincipal.principalliste[0].ajouter('Fleur');
  listeprincipal.principalliste[0].ajouter('Nez');
  listeprincipal.principalliste[0].ajouter('Lac');
  listeprincipal.principalliste[0].ajouter('Rire');
  listeprincipal.principalliste[0].ajouter('Main');
  listeprincipal.principalliste[0].ajouter('Beurre');
  listeprincipal.ajouter('mots moyens', 'Ecureuil');
  listeprincipal.principalliste[1].ajouter('Bibliotheque');
  listeprincipal.principalliste[1].ajouter('Montagne');
  listeprincipal.principalliste[1].ajouter('Ordinateur');
  listeprincipal.principalliste[1].ajouter('Musique');
  listeprincipal.principalliste[1].ajouter('Avion');
  listeprincipal.principalliste[1].ajouter('Pluie');
  listeprincipal.principalliste[1].ajouter('Cheminee');
  listeprincipal.principalliste[1].ajouter('Football');
  listeprincipal.principalliste[1].ajouter('Etoile');
  listeprincipal.principalliste[1].ajouter('Telephone');
  listeprincipal.principalliste[1].ajouter('Restaurant');
  listeprincipal.principalliste[1].ajouter('Guitare');
  listeprincipal.principalliste[1].ajouter('Elephant');
  listeprincipal.principalliste[1].ajouter('Camera');
  listeprincipal.ajouter('mots difficiles', 'Excentrique');
  listeprincipal.principalliste[2].ajouter('Extravagant');
  listeprincipal.principalliste[2].ajouter('Enigmatique');
  listeprincipal.principalliste[2].ajouter('Deconcertant');
  listeprincipal.principalliste[2].ajouter('Epoustouflant');
  listeprincipal.principalliste[2].ajouter('Inevitable');
  listeprincipal.principalliste[2].ajouter('Sophistique');
  listeprincipal.principalliste[2].ajouter('Resilience');
  listeprincipal.principalliste[2].ajouter('Ephemere');
  listeprincipal.principalliste[2].ajouter('Incomprehensible');
  listeprincipal.principalliste[2].ajouter('Authentique');
  listeprincipal.principalliste[2].ajouter('Ambiguite');
  listeprincipal.principalliste[2].ajouter('Magnanime');
  listeprincipal.principalliste[2].ajouter('Prerogative');
  listeprincipal.principalliste[2].ajouter('Inebranlable');
}

Future<void> fetchData() async {
// final dir = await getApplicationDocumentsDirectory();
// print (dir.path);
  final isar = await Isar.open(
    [MotsSchema],
    directory: '..\\Base_de_donnees\\test.isar',//'Base_de_donnees/test.isar',
  );/**/

  //final mots = isar.mots;

  final pancakes = Mots()
    ..mot = 'Pancakes'
    ..categorie = 1
    ..modifiable = true;

  /*await isar.writeTxn(() async {
    await mots.put(pancakes);
  });*/

  //await isar.close();//
}