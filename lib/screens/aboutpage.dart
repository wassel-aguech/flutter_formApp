import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Propos ...."),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 600,

              child: Image.network(
                "https://fastly.picsum.photos/id/208/200/200.jpg?hmac=J1BdqRgAAAId9wernbPINrW38haBGOtrpEqn3m2wjlY",
                width: 200,
                height: 200,
              ),
            ),

            SizedBox(
              height: 100,
              width: 50,

              child: Image.asset("assets/image/img1.jpg"),
            ),
            SizedBox(
              height: 100,
              width: 50,

              child: Image.asset("assets/image/img2.jpg"),
            ),

            SizedBox(
              width: 200,
              height: 100,
              child: Card(
                elevation: 10,
                color: Colors.red[200],

                child: Center(
                  child: customText(
                    txt: " first flutter app",
                    couleur: Colors.blue,
                    taille: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            customText(
              txt: "This is the APropos Page",
              couleur: Colors.blue,
              taille: 18,
              fontWeight: FontWeight.bold,
            ),
            customText(
              txt: "Nom & Prenom : wassel aguech",
              couleur: Colors.red,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.email, size: 28, color: Colors.blue),
                customText(txt: "Email", taille: 20),
              ],
            ),
            customText(txt: " wasselaguech@gmail.com", couleur: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget customText({
    required String txt,
    Color? couleur,
    double? taille = 14,
    FontWeight? fontWeight = FontWeight.normal,
  }) {
    return Text(
      txt,
      style: TextStyle(
        color: couleur,
        fontSize: taille,
        fontWeight: fontWeight,
      ),
    );
  }
}
