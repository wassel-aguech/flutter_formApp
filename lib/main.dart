import 'package:flutter/material.dart';
import 'package:gldra_g2/screens/inscription.dart';

// la structure d'un projet flutter STL

void main() {
  var myApp = MonProjet();
  runApp(myApp);
}

class MonProjet extends StatelessWidget {
  const MonProjet({super.key});

  @override
  Widget build(BuildContext context) {
    // configuration du projet : thème, routage
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inscription(),
    );
  }
}