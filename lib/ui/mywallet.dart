import 'package:flutix/ui/topup.dart';
import 'package:flutter/material.dart';

class mywallet extends StatelessWidget {
  const mywallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: ListView(children: [
          MyWallet(),
        ]),
      ),
    );
  }
}

class MyWallet extends StatelessWidget {
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
                left: 0,
                top: 105,
                child: Container(
                  width: 360,
                  height: 215,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.93, 0.36),
                      end: Alignment(0.93, -0.36),
                      colors: [Color(0xFF4A3979), Colors.white],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 82,
                top: 238,
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
                        left: 32,
                        top: 22,
                        child: GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman edit profil saat ditekan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => topup(),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: 133,
                            height: 16,
                            child: Text(
                              'Top Up',
                              textAlign: TextAlign.center,
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
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 43,
                child: Container(
                  width: 43,
                  height: 39,
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 11,
                top: 9,
                child: Container(
                  width: 340,
                  height: 17,
                  child: Stack(
                    children: [
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
              const Positioned(
                left: 120,
                top: 56,
                child: SizedBox(
                  width: 119,
                  height: 60,
                  child: Text(
                    'My Wallets',
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
              const Positioned(
                left: 21,
                top: 116,
                child: SizedBox(
                  width: 319,
                  height: 70,
                  child: Text(
                    'IDR. 390.000,00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w200,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 89,
                top: 194,
                child: SizedBox(
                  width: 181,
                  height: 24,
                  child: Text(
                    'Available Balance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 15,
                top: 343,
                child: SizedBox(
                  width: 181,
                  height: 24,
                  child: Text(
                    'Recent Transaction',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 387,
                child: Container(
                  width: 260,
                  height: 305,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 72,
                        top: 31,
                        child: SizedBox(
                          width: 155,
                          height: 23,
                          child: Text(
                            'Sunday 30, 15.oo',
                            textAlign: TextAlign.center,
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
                      const Positioned(
                        left: 88,
                        top: 54,
                        child: SizedBox(
                          width: 172,
                          height: 23,
                          child: Text(
                            'XXI Big Mall Samarinda',
                            textAlign: TextAlign.center,
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
                      const Positioned(
                        left: 88,
                        top: 7,
                        child: SizedBox(
                          width: 131,
                          height: 23,
                          child: Text(
                            'The Avengers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 103,
                        child: Container(
                          width: 260,
                          height: 202,
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 72,
                                top: 31,
                                child: SizedBox(
                                  width: 155,
                                  height: 23,
                                  child: Text(
                                    'Sunday 30, 15.oo',
                                    textAlign: TextAlign.center,
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
                              const Positioned(
                                left: 88,
                                top: 54,
                                child: SizedBox(
                                  width: 172,
                                  height: 23,
                                  child: Text(
                                    'XXI Big Mall Samarinda',
                                    textAlign: TextAlign.center,
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
                              const Positioned(
                                left: 88,
                                top: 7,
                                child: SizedBox(
                                  width: 131,
                                  height: 23,
                                  child: Text(
                                    'The Avengers',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 68,
                                  height: 92,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/68x92"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 110,
                                child: Container(
                                  width: 260,
                                  height: 92,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 72,
                                        top: 24,
                                        child: SizedBox(
                                          width: 155,
                                          height: 23,
                                          child: Text(
                                            'Sunday 30, 15.oo',
                                            textAlign: TextAlign.center,
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
                                        left: 88,
                                        top: 47,
                                        child: SizedBox(
                                          width: 172,
                                          height: 23,
                                          child: Text(
                                            'XXI Big Mall Samarinda',
                                            textAlign: TextAlign.center,
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
                                        left: 88,
                                        top: 0,
                                        child: SizedBox(
                                          width: 131,
                                          height: 23,
                                          child: Text(
                                            'The Avengers',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 68,
                                          height: 92,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://via.placeholder.com/68x92"),
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
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 68,
                          height: 92,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/68x92"),
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
