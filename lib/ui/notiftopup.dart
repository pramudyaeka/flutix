import 'package:flutix/ui/homepage.dart';
import 'package:flutix/ui/mywallet.dart';
import 'package:flutix/ui/profilepage.dart';
import 'package:flutter/material.dart';

class notiftopup extends StatelessWidget {
  const notiftopup({super.key});

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
          SuccessTopup(),
        ]),
      ),
    );
  }
}

class SuccessTopup extends StatelessWidget {
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
                  left: 120,
                  top: 501,
                  child: GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman edit profil saat ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => profilpage(),
                          ),
                        );
                      },
                      child: Center(
                        child: SizedBox(
                          width: 130,
                          height: 501,
                          child: Text(
                            'Back To Home',
                            style: TextStyle(
                              color: Color.fromARGB(94, 51, 27, 27),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ))),

              Positioned(
                left: 107,
                top: 450,
                child: Container(
                  width: 146,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 146,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A3979),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 146,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A3979),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          top: 0,
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
                                width: 146,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'My Wallet',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                )),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 71,
                top: 342,
                child: SizedBox(
                  width: 217,
                  height: 45,
                  child: Text(
                    'You have successfully feed your wallet',
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
                left: 92,
                top: 318,
                child: SizedBox(
                  width: 178,
                  height: 24,
                  child: Text(
                    'Wallet is Ready !',
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
              //   left: 127,
              //   top: 151,
              //   child: Container(
              //     width: 103,
              //     height: 90.01,
              //     child: Stack(children: []),
              //   ),
              // ),
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
            ],
          ),
        ),
      ],
    );
  }
}
