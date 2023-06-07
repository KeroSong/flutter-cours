import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:io';

final List<String> alphabet = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];

Future<List<int>> jsonCategorie() async {
  String jsonContent =
      await rootBundle.loadString('Data/Pendu_Liste_Mots.json');

  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  List<dynamic> wordList = jsonData['mots'];

  List<int> categories =
      wordList.map((item) => item['categorie'] as int).toList();

  return categories;
}

Future<List<String>> jsonMots(int random, int categorie) async {
  String jsonContent =
      await rootBundle.loadString('Data/Pendu_Liste_Mots.json');

  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  List<dynamic> wordList = jsonData['mots'];

  int id = 15 * categorie + random;

  List<String> mots = wordList
      .where((item) => item['id'] == id)
      .map((item) => (item['mot'] as List<dynamic>).cast<String>().join(''))
      .toList();

  return mots;
}

void ajouter(String mot) async {
  String jsonContent =
      await rootBundle.loadString('Data/Pendu_Liste_Mots.json');

  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  List<dynamic> wordList = jsonData['mots'];

  wordList.add({'mot': mot, 'categorie': 4});

  String newJsonContent = jsonEncode(jsonData);
  await File('Data/Pendu_Liste_Mots.json').writeAsString(newJsonContent);
}

void modifier(int idModify, String mot) async {
  String jsonContent =
      await rootBundle.loadString('Data/Pendu_Liste_Mots.json');

  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  List<dynamic> wordList = jsonData['mots'];

  int id = 15 * 4 + idModify;

  wordList.forEach((element) {
    if (element['id'] == id) {
      // Effectuez les modifications nécessaires sur l'élément
      element['mot'] = mot;
    }
  });

  String newJsonContent = jsonEncode(jsonData);
  await File('../../Data/Pendu_Liste_Mots.json').writeAsString(newJsonContent);
}

void supprimer(int idRemove) async {
  String jsonContent =
      await rootBundle.loadString('Data/Pendu_Liste_Mots.json');

  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  List<dynamic> wordList = jsonData['mots'];

  int id = 15 * 4 + idRemove;

  wordList.removeWhere((element) => element['id'] == id);

  String newJsonContent = jsonEncode(jsonData);
  await File('Data/Pendu_Liste_Mots.json').writeAsString(newJsonContent);
}
