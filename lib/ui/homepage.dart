import 'package:flutix/models/models.dart';
import 'package:flutix/ui/moviedetail.dart';
import 'package:flutix/services/services.dart';
import 'package:flutix/widgets/comingposters.dart';
import 'package:flutix/widgets/posters.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Future<List<Movie>> nowPlaying = Api.getMovies('now_playing', 4);
    Future<List<Movie>> comingSoon = Api.getMovies('upcoming', 4);
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF2C1F62),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Username",
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rp ,00",
                      style: GoogleFonts.openSans(
                          color: Color(0xFFFBD460),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Now Playing",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              FutureBuilder<List<Movie>>(
                  future: nowPlaying,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(
                        color: Color.fromARGB(255, 247, 234, 60),
                      );
                    } else if (snapshot.hasData) {
                      final movies = snapshot.data!;
                      return Container(
                        height: 156,
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, i) {
                            return MoviePoster(
                              //nama widget
                              movie: movies[i], //movies[i].nama dls
                            );
                            // .noRate();
                          },
                          itemCount: movies.length,
                        ),
                      );
                    } else {
                      return const Text("there is no data");
                    }
                  }),
              SizedBox(height: 10),
              Text(
                "Movie Category",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 70.0,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 65,
                        margin:
                            EdgeInsets.only(left: 15.0, top: 8.0, right: 3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Coming Soon",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              FutureBuilder<List<Movie>>(
                future: comingSoon,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                      color: Color.fromARGB(255, 247, 234, 60),
                    );
                  } else if (snapshot.hasData) {
                    final movies = snapshot.data!;
                    return Container(
                      height: 200,
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) {
                          return MovieComingPoster(
                            movie: movies[i],
                          );
                        },
                        itemCount: movies.length,
                      ),
                    );
                  } else {
                    return const Text("There is no data");
                  }
                },
              ),
              SizedBox(height: 20),
            ]),
          ),
          Center(
            child: Container(width: 280, height: 90, color: Colors.grey),
          )
        ]),
      ]),
    );
  }
}