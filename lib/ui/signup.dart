import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/ui/genre.dart';
import 'package:flutix/ui/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = false;

  final TextEditingController _ctrlNama = TextEditingController();
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  final TextEditingController _ctrlConfirmPassword = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final nama = _ctrlNama.value.text;
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      setState(() => _loading = true);

      try {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Registration Successful"),
              content: Text("Your account has been successfully created."),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Navigate back to the login page
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } catch (error) {
        // Tangani kesalahan yang mungkin terjadi saat registrasi
        print('Error during registration: $error');

        // Tampilkan pesan kesalahan ke pengguna, misalnya, dengan menggunakan snackbar.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registration failed. Please try again.'),
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Color.fromARGB(255, 111, 11, 225),
              size: 32,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Create Your",
                    style: GoogleFonts.raleway(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Account",
                    style: GoogleFonts.raleway(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.person_4_rounded,
                        color: Color.fromARGB(255, 247, 234, 60),
                        size: 100,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 70.0, right: 20),
                        child: Icon(
                          Icons.add_circle,
                          color: Color.fromARGB(255, 111, 11, 225),
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlNama,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Full Name",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "Your Full Name...",
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
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
                      hintText: "Your Email Address...",
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
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
                      hintText: "***********",
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
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlConfirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your confirm password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Confirm Password",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "***********",
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
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 20, bottom: 40),
                      child: Text(
                        "Continue to Sign Up",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        handleSubmit();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Genre()));
                      },
                      child: _loading
                          ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Color.fromARGB(255, 111, 11, 225),
                                strokeWidth: 2,
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                  left: 70, top: 40, bottom: 40, right: 20),
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(255, 111, 11, 225),
                                size: 60,
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
