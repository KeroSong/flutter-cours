import 'package:flutter/material.dart';
import 'ui/game.dart';
import 'ui/menu.dart';
import 'Base_de_donnees/database.dart';
import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import '../Modeles/mots.dart';
import 'package:path/path.dart' as p;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final testfuture = fetchData();/**/

  
/*final dir = await getApplicationDocumentsDirectory();
  final isarPath = p.join(dir.path, 'my_app.isar');
// print (dir.path);
  final isar = await Isar.open(
    [MotsSchema],
    directory: dir.path,//'Base_de_donnees/test.isar',
  );*/

  testfuture.then((_) {
    print('La fonction asynchrone est terminée');
  }).catchError((error) {
    print('Erreur lors de l\'appel de la fonction asynchrone : $error');
  });/**/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pendu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}
