import '../Modeles/liste_listes.dart';
import '../Modeles/liste_lettres.dart';

class ListePrincipal {
  final List<ListeListes> principalliste;

  const ListePrincipal({
    required this.principalliste,
  });

  factory ListePrincipal.createState(ListeListes list) {
    return ListePrincipal(
      principalliste: [list],
    );
  }

  void ajouter(String name, String mot) {
    principalliste.add(ListeListes.createState(
      principalliste.length, name, ListeLettre.createState(
        0, mot
      )
    ));
  }

  void modifier(int idliste, int idmot, String mot) {
    principalliste[idliste].modifier(idmot, mot);
  }

  void supprimer(int id) {
    principalliste.remove(principalliste[id]);
  }
}