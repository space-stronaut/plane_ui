import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              const Image(image: AssetImage('images/home.png')),
              Text(
                "Login Page",
                style: GoogleFonts.poppins(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  side: BorderSide(width: 4.0, color: Colors.blue),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(color: Colors.blue[400])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
