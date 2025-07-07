import 'package:cake_shop/components/button.dart';
import 'package:cake_shop/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25),
            // shop name
            Text(
              "BOLOS DA TIA",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            // icon
            Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset('lib/assets/LOGO INSTA - Google Chrome 07_07_2025 16_43_53.png'),
            ),

         

            // title
            Text(
              "ENCONTRE O BOLO PERFEITO PARA CADA MOMENTO ESPECIAL",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 36,
                color: Colors.white,
              ),
            ),

            // subtitle
            Text(
              "DELICIE-SE COM CADA MORDIDA COM SABORES QUE AQUECEM O CORAÇÃO",
              style: TextStyle(color: Colors.grey[300], height: 3),
            ),

            SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Iniciar",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
