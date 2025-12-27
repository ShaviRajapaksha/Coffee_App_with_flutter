import 'package:coffee_app_with_flutter/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/getStart.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 220),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset(
                'assets/logo.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 70),
            Text(
              "Find your Favorite",
              style: TextStyle(
                fontSize: 30,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: const Color(0xFF9a7558),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Coffee Taste!",
              style: TextStyle(
                fontSize: 40,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: const Color(0xFF9a7558),
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                '''We're here to help you find the best coffee in town.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: const Color(0xFF5f3c26),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFF9a7558),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SigninPage()),
                  );
                },
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        "Get Started",
                      ),
                      Icon(
                        //Icons.Color.white,
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
