import 'package:flutix/ui/signin.dart';
import 'package:flutix/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New Experience",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Watch a new movies much ",
                  style: GoogleFonts.raleway(
                    color: const Color.fromARGB(255, 114, 113, 113),
                    fontSize: 16,
                  ),
                ),
                Text(
                  "easier than any before ",
                  style: GoogleFonts.raleway(
                    color: const Color.fromARGB(255, 114, 113, 113),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 79, 62, 157),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: Size(250, 50),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account?",
                      style: GoogleFonts.raleway(
                        color: Color.fromARGB(255, 114, 113, 113),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        "  Sign In",
                        style: TextStyle(
                          color: Color.fromARGB(255, 111, 11, 225),
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
