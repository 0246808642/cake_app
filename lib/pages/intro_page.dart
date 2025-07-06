import 'package:cake_shop/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25),
            // shop name
            Text(
              "CAKE MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            // icon
            Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset('lib/assets/cake_dois.png'),
            ),

            SizedBox(height: 25),

            // title
            Text(
              "FIND THE PERFECT CAKE FOR EVERY SPECIAL MOMENT",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 36,
                color: Colors.white,
              ),
            ),

            // subtitle
            Text(
              "DELIGHT IN EVERY BITE WITH FLAVORS THAT WARM THE HEART",
              style: TextStyle(color: Colors.grey[300], height: 4),
            ),

            SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Get Started",
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
