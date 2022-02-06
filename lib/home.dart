import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 70, 81, 241),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 405,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/splash.png'))),
                    ),
                    Text(
                      "Fly Like a bird",
                      style: GoogleFonts.poppins(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Lets fly with us\n and travelling around the world",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 15.0),
                    ),
                    Container(
                      width: 220,
                      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 40.0),
                      height: 55,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0))),
                        child: Text(
                          'Get Started',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
