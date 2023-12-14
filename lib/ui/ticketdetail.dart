import 'package:flutter/material.dart';

class ticketdetail extends StatelessWidget {
  const ticketdetail({super.key});

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
          TicketDetails(),
        ]),
      ),
    );
  }
}

class TicketDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 700,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 380,
                child: Container(
                  width: 360,
                  height: 185,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 8,
                top: 297,
                child: SizedBox(
                  width: 213,
                  child: Text(
                    'The Avenger',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              
              Positioned(
                left: 211,
                top: 388,
                child: Text(
                  'Date',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 472,
                child: Text(
                  'Seat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 481,
                child: SizedBox(
                  width: 58,
                  child: Text(
                    'Name',
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
                left: 211,
                top: 576,
                child: SizedBox(
                  width: 97,
                  height: 24,
                  child: Text(
                    'QR CODE',
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
                left: 25,
                top: 579,
                child: Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 392,
                child: SizedBox(
                  width: 90,
                  height: 30,
                  child: Text(
                    'Cinema',
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
                left: 8,
                top: 325,
                child: Text(
                  'Action, English',
                  style: TextStyle(
                    color: Color(0xFF8A9291),
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 427,
                child: Text(
                  'XXI Big Mall Samarinda',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 211,
                top: 425,
                child: Text(
                  '13, September 2023',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 509,
                child: Text(
                  'Pramudyae',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 513,
                child: Text(
                  'A5,C12',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD700),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD700),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD700),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 346,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD700),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 1,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 223,
                  top: 610,
                  child: Center(
                    child: Container(
                      width: 73,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "data:image/png;base64,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"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: 25,
                top: 605,
                child: SizedBox(
                  width: 304,
                  height: 15,
                  child: Text(
                    'Rp. 100.000,00',
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
                  left: 5,
                  top: 10,
                  child: Center(
                    child: Container(
                      width: 366,
                      height: 278,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
