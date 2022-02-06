import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      height: 375,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/splas.png'))),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Effortless\nIntegrated app.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(17, 17, 17, 1)),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: 220,
                      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 40.0),
                      height: 55,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(95, 89, 225, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0))),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, color: Colors.white),
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
