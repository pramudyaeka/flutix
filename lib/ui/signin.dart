import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/ui/genre.dart';
import 'package:flutix/ui/homepage.dart';
import 'package:flutix/ui/navigationbar.dart';
import 'package:flutix/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _loading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;

      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        print("User Logged In: ${userCredential.user!.email}");
        setState(() => _loading = true);
        MaterialPageRoute(
          builder: (context) => HomePageUser(),
        );
      } catch (error) {
        print('Error during login: $error');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please try again.'),
          ),
        );
      } finally {
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                    width: 100,
                    height: 80,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: AssetImage("assets/smallflutixlogo.png"),
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Welcome back,",
                      style: GoogleFonts.raleway(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Explorer!",
                  style: GoogleFonts.raleway(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _ctrlEmail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insert your email address';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Email Address",
                  labelStyle: GoogleFonts.raleway(color: Colors.black),
                  hintText: "Insert your email address...",
                  hintStyle: GoogleFonts.raleway(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 247, 234, 60),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Form(
              child: TextFormField(
                controller: _ctrlPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insert your password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Password",
                  labelStyle: GoogleFonts.raleway(color: Colors.black),
                  hintText: "*********",
                  hintStyle: GoogleFonts.raleway(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 247, 234, 60),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85, left: 20),
                child: Text(
                  "Continue to Sign In",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                        handleSubmit();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => homepage()));
                      },
                child: _loading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 111, 11, 225),
                          strokeWidth: 2,
                        ),
                      )
                    : Padding(
                        padding:
                            const EdgeInsets.only(left: 95, top: 80, right: 20),
                        child: Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color.fromARGB(255, 111, 11, 225),
                          size: 60,
                        ),
                      ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 60),
                child: Text(
                  "Start Fresh New ?",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 60, right: 20),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.raleway(
                      color: Color.fromARGB(255, 111, 11, 225),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
