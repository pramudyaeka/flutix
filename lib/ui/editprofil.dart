import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

  final TextEditingController _ctrlNama = TextEditingController();
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  final TextEditingController _ctrlConfirmPassword = TextEditingController();

class _EditProfileState extends State<EditProfile> {
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
        children: [
          Column(
            children: [
              Text('Edit Your \nProfile',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black
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
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3D9D9D),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: Size(250, 50),
                  ),
                  child: Text(
                    "Update My Profile",
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

            ],
          )
          ],
      ),
    );
  }
}
