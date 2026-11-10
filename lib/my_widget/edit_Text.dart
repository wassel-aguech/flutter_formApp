import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  String txt_label;
  IconData uneIcone;
  TextInputType clavier;
  bool motdepasse;
  String? Function(String?)? validation;

  EditText({
    super.key,

    required this.txt_label,
    required this.uneIcone,
    this.clavier = TextInputType.text,
    this.motdepasse = false,
    required this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 38, left: 38, top: 10),
      child: TextFormField(
        keyboardType: clavier,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),

        obscuringCharacter: '#',

        obscureText: motdepasse,

        decoration: InputDecoration(
          labelText: txt_label,
          hintText: "donner votre $txt_label",
          prefixIcon: Icon(uneIcone, color: Colors.blue, size: 30),
          //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
        ),

        validator: validation,
      ),
    );
  }
}
