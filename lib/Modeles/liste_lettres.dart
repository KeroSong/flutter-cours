class ListeLettre {
  final int id;
  final List<String> liste;

  const ListeLettre({
    required this.id,
    required this.liste,
  });

  factory ListeLettre.createState(int idlettre, String word) {
    return ListeLettre(
      id: idlettre,
      liste: word.toUpperCase().split(''),
    );
  }
}