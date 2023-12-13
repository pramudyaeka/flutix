import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutix/models/models.dart';
// import 'package:flutix/ui/moviedetail.dart';
import 'package:flutix/services/services.dart';
import 'package:flutix/widgets/comingposters.dart';
import 'package:flutix/widgets/posters.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

    final List<String> imgList = [
      "https://foto.kontan.co.id/_ziwi2qFjCBIXDAlJf7D1QB8jmk=/smart/filters:format(webp)/2022/05/20/1845567649p.jpg", // Ganti URL dengan URL gambar pertama
      "https://foto.kontan.co.id/w637HNzHuAnuDoWG6emeTAjh4_s=/smart/filters:format(webp)/2022/12/23/588914752p.jpg", // Ganti URL dengan URL gambar kedua
    ];
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color(0xFF2C1F62),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
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
                    const SizedBox(height: 40),
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
                          color: const Color(0xFFFBD460),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
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
              const SizedBox(height: 10),
              Text(
                "Movie Category",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.ghost,
                        size: 30, // Sesuaikan ukuran ikon
                        color: Colors.black, // Sesuaikan warna ikon
                      ),
                      SizedBox(width: 20), // Jarak antara ikon
                      Icon(
                        FontAwesomeIcons.ghost,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        FontAwesomeIcons.ghost,
                        size: 30,
                        color: Colors.black,
                      ),
                      // Tambahkan Icon lainnya sesuai kebutuhan
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
            ]),
          ),
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imgList.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      url,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ]),
      ]),
    );
  }
}
