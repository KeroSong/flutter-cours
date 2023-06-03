import 'package:isar/isar.dart';
part 'mots.g.dart';

@collection
class Mots {
  Id id = Isar.autoIncrement;

  String? mot;

  int? categorie;

  bool? modifiable;
}