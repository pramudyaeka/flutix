import 'package:flutix/ui/notiftopup.dart';
import 'package:flutter/material.dart';

class topup extends StatelessWidget {
  const topup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      // ),
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
          TopUp(),
        ]),
      ),
    );
  }
}

class TopUp extends StatelessWidget {
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
                left: 21,
                top: 123,
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
                        top: 6,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Amount',
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
                    'Top Up',
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
              // Positioned(
              //   left: 17,
              //   top: 43,
              //   child: Container(
              //     width: 43,
              //     height: 39,
              //     child: Stack(children: []),
              //   ),
              // ),
              // Positioned(
              //   left: 11,
              //   top: 9,
              //   child: Container(
              //     width: 340,
              //     height: 17,
              //     child: Stack(
              //       children: [
              //         Positioned(
              //           left: 17,
              //           top: 1,
              //           child: Opacity(
              //             opacity: 0.60,
              //             child: Text(
              //               '12:00',
              //               style: TextStyle(
              //                 color: Color(0xFF1C1B14),
              //                 fontSize: 14,
              //                 fontFamily: 'Roboto',
              //                 fontWeight: FontWeight.w500,
              //                 height: 0,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Positioned(
              //           left: 0,
              //           top: 7,
              //           child: Opacity(
              //             opacity: 0.50,
              //             child: Container(
              //               width: 4,
              //               height: 4,
              //               decoration: ShapeDecoration(
              //                 color: Color(0xFF1C1B14),
              //                 shape: OvalBorder(),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Positioned(
              //           left: 332,
              //           top: 1,
              //           child: Container(
              //             width: 8,
              //             height: 13,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: NetworkImage(
              //                     "https://via.placeholder.com/8x13"),
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Positioned(
              //   left: 11,
              //   top: 9,
              //   child: Container(
              //     width: 340,
              //     height: 17,
              //     child: Stack(
              //       children: [
              //         Positioned(
              //           left: 17,
              //           top: 1,
              //           child: Opacity(
              //             opacity: 0.60,
              //             child: Text(
              //               '12:00',
              //               style: TextStyle(
              //                 color: Color(0xFF1C1B14),
              //                 fontSize: 14,
              //                 fontFamily: 'Roboto',
              //                 fontWeight: FontWeight.w500,
              //                 height: 0,
              //               ),
              //             ),
              //           ),
              //         ),
              //         Positioned(
              //           left: 0,
              //           top: 7,
              //           child: Opacity(
              //             opacity: 0.50,
              //             child: Container(
              //               width: 4,
              //               height: 4,
              //               decoration: ShapeDecoration(
              //                 color: Color(0xFF1C1B14),
              //                 shape: OvalBorder(),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Positioned(
              //           left: 332,
              //           top: 1,
              //           child: Container(
              //             width: 8,
              //             height: 13,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: NetworkImage(
              //                     "https://via.placeholder.com/8x13"),
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
                          left: 71,
                          top: 22,
                          child: GestureDetector(
                            onTap: () {
                              // Navigasi ke halaman edit profil saat ditekan
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => notiftopup(),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: 58,
                              height: 16,
                              child: Text(
                                'Top Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 233,
                child: SizedBox(
                  width: 207,
                  height: 24,
                  child: Text(
                    'Choose By Template',
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
                left: 60,
                top: 294,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 50.000',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 190,
                top: 296,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 100.000',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 373,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 150.000',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 187,
                top: 375,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 200.000',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 454,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 250.000',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 187,
                top: 456,
                child: Container(
                  width: 110,
                  height: 59.30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 59.30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 9,
                        child: SizedBox(
                          width: 79,
                          height: 37,
                          child: Text(
                            'IDR 300.000',
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
