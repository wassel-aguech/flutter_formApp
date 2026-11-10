import 'package:emails_validator/emails_validator.dart';
import 'package:flutter/material.dart';
import 'package:gldra_g2/my_widget/edit_Text.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page Inscription",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image.asset("assets/image/img3.jpeg"),
              ),

              EditText(
                txt_label: "Nom et Prénom",
                uneIcone: Icons.person,
                clavier: TextInputType.text,
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),

              EditText(
                txt_label: "Email",
                uneIcone: Icons.email,
                clavier: TextInputType.emailAddress,
                validation: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Veuillez entrer votre email';
                  }

                  // Vérification du format de l'email
                  if (!EmailsValidator.validate(value.trim())) {
                    return 'Veuillez entrer un email valide';
                  }

                  return null;
                },
              ),

              EditText(
                txt_label: "Mot de passe",
                uneIcone: Icons.lock,
                motdepasse: true,
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre mot de passe';
                  }
                  if (value.length < 6) {
                    return 'Le mot de passe doit contenir au moins 6 caractères';
                  }
                  return null;
                },
              ),
              EditText(
                txt_label: "Confirmer mot de passe",
                uneIcone: Icons.lock,
                motdepasse: true,
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre password';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.validate();

                      // action du bouton
                    },
                    child: Text("S'inscrire"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // action du bouton
                    },
                    child: Text("Annuler"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
