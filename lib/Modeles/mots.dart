import 'package:isar/isar.dart';

@collection
class Mots {
  Id id = Isar.autoIncrement;

  String? mot;

  int? categorie;

  bool? modifiable;
}