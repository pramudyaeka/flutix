import 'package:flutix/ui/editprofil.dart';
import 'package:flutix/ui/mywallet.dart';
import 'package:flutter/material.dart';

class profilpage extends StatelessWidget {
  const profilpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 722,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 305,
                child: Container(
                  width: 360,
                  height: 351,
                  decoration: BoxDecoration(color: Color(0xFF4A3979)),
                ),
              ),
              Positioned(
                left: 0,
                top: 50,
                child: Container(
                  width: 358,
                  height: 672,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 140,
                top: 132,
                child: Container(
                  width: 70,
                  height: 70,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF3E355),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 51,
                        top: 63,
                        child: Container(
                          width: 13,
                          height: 14.36,
                          child: Stack(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 319,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A3979),
                    shape: CircleBorder(),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 46,
                top: 379,
                child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A3979),
                      shape: OvalBorder(),
                    ),
                    child: Center(
                      child: Icon(
                        Icons
                            .account_balance_wallet, // Mengganti dengan ikon dompet
                        color: Colors.white,
                        size: 16,
                      ),
                    )),
              ),
              Positioned(
                left: 46,
                top: 443,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A3979),
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.settings, // Mengganti dengan ikon settings
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 506,
                child: Container(
                    width: 32,
                    height: 32,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF4A3979),
                      shape: OvalBorder(),
                    ),
                    child: Center(
                      child: Text(
                        '?', // Karakter Unicode tanda tanya
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ),
              Positioned(
                left: 47,
                top: 567,
                child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A3979),
                      shape: OvalBorder(),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 16,
                      ),
                    )),
              ),
              Positioned(
                left: 157,
                top: 149,
                child: Container(
                  width: 37,
                  height: 34,
                  child: Stack(children: []),
                ),
              ),
              // const Positioned(
              //   left: 86,
              //   top: 331,

              //   child: SizedBox(
              //     width: 182,
              //     child: Text(
              //       'Edit Profil',
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 20,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w500,
              //         height: 0,
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                  left: 86,
                  top: 331,
                  child: GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman edit profil saat ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => editprofil(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 182,
                      child: Text(
                        'Edit Profil',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: 50,
                top: 458,
                child: Container(
                  width: 24,
                  height: 22.90,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 117,
                top: 212,
                child: SizedBox(
                  width: 182,
                  child: Text(
                    'pramudyae',
                    style: TextStyle(
                      color: Color(0xFF4A3979),
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 71,
                child: SizedBox(
                  width: 182,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 95,
                top: 240,
                child: SizedBox(
                  width: 263,
                  child: Text(
                    'pramudyae@gmail.com',
                    style: TextStyle(
                      color: Color(0xFF2F244C),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 86,
                  top: 391,
                  child: GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman edit profil saat ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mywallet(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 182,
                      child: Text(
                        'My Wallet',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: 86,
                top: 457,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Change Language',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 86,
                top: 518,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Help Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 86,
                top: 581,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    'Rate Apps',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 53,
                top: 397,
                child: Container(
                  height: 16.16,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 52,
                top: 521,
                child: Container(
                  width: 21.98,
                  height: 21.98,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 11,
                top: 10,
                child: Container(
                  width: 340,
                  height: 17,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 17,
                        top: 1,
                        child: Opacity(
                          opacity: 0.60,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 7,
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: ShapeDecoration(
                              color: Color(0xFF1C1B14),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 332,
                        top: 1,
                        child: Container(
                          width: 8,
                          height: 13,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/8x13"),
                              fit: BoxFit.fill,
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
