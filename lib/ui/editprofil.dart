import 'package:flutter/material.dart';

class editprofil extends StatelessWidget {
  const editprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          EditProfile(),
        ]),
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 640,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 18,
                top: 441,
                child: Container(
                  width: 312,
                  height: 73,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 312,
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF7E7E7E)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 0,
                        child: Container(
                          width: 72,
                          height: 32,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 23,
                        child: SizedBox(
                          width: 85,
                          height: 36,
                          child: Text(
                            '. . . . .',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 6,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 361,
                child: Container(
                  width: 312,
                  height: 73,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 312,
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF7E7E7E)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 0,
                        child: Container(
                          width: 103,
                          height: 32,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 37,
                        child: SizedBox(
                          width: 181,
                          height: 25,
                          child: Text(
                            'pramudyae |',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 6,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 283,
                child: Container(
                  width: 312,
                  height: 73,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 312,
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF7E7E7E)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 0,
                        child: Container(
                          width: 72,
                          height: 32,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 35,
                        child: SizedBox(
                          width: 86,
                          height: 25,
                          child: Text(
                            'P',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 6,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                              color: Color(0x557E7E7E),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 201,
                child: Container(
                  width: 312,
                  height: 73,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 23,
                        child: Container(
                          width: 312,
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF7E7E7E)),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 0,
                        child: Container(
                          width: 103,
                          height: 32,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 37,
                        child: SizedBox(
                          width: 181,
                          height: 25,
                          child: Text(
                            'pramudyae |',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 6,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Full Name',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 63,
                child: SizedBox(
                  width: 119,
                  height: 60,
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 135,
                top: 104,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 142,
                top: 102,
                child: Container(
                  width: 76.80,
                  height: 76.80,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 168,
                top: 180,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    color: Color(0xFF97397D),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 171,
                top: 184,
                child: Container(
                  width: 20,
                  height: 19,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 78,
                top: 551,
                child: Container(
                  width: 197,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 197,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A3979),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 42,
                        top: 22,
                        child: SizedBox(
                          width: 133,
                          height: 16,
                          child: Text(
                            'Update Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
