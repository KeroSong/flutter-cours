import 'package:pendu/Modeles/liste_lettres.dart';

class ListeListes {
  final int id;
  final String name;
  final List<ListeLettre> menuliste;

  const ListeListes({
    required this.id,
    required this.name,
    required this.menuliste,
  });

  factory ListeListes.createState(int idliste, String name, ListeLettre list) {
    return ListeListes(
      id: idliste,
      name: name,
      menuliste: [list],
    );
  }

  void ajouter(String mot) {
    menuliste.add(ListeLettre.createState(menuliste.length, mot));
  }

  void modifier(int id, String mot) {
    menuliste.replaceRange(id, id + 1,
    [ListeLettre.createState(id, mot)]);
  }

  void supprimer(int id) {
    menuliste.remove(menuliste[id]);
  }
}