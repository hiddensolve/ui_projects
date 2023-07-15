import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RiderProfile extends StatefulWidget {
  const RiderProfile({super.key});

  @override
  State<RiderProfile> createState() => _RiderProfileState();
}

class _RiderProfileState extends State<RiderProfile> {
  double heightRatio = 0.25;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/map.jpg"), fit: BoxFit.cover),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double height = constraints.maxHeight;
          double width = constraints.maxWidth;
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.menu,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    height: height * heightRatio,
                    width: width,
                    duration: const Duration(seconds: 1),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                heightRatio = heightRatio == 0.25 ? 0.7 : 0.25;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage(
                                      "assets/images/Mbilalcodes.jpg"),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "MBilalCodes",
                                        style: GoogleFonts.cairo(
                                          textStyle: const TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 99, 98, 98),
                                          ),
                                        ),
                                      ),
                                      RatingBar(
                                        initialRating: 4,
                                        maxRating: 5,
                                        itemCount: 5,
                                        itemSize: 30,
                                        ratingWidget: RatingWidget(
                                            full: const Icon(Icons.star),
                                            half: const Icon(
                                                Icons.star_border_outlined),
                                            empty: const Icon(
                                                Icons.star_border_outlined)),
                                        onRatingUpdate: (value) {},
                                      ),
                                      const Text("rating: 4/5 (50 ratings)")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            color: const Color.fromARGB(255, 33, 49, 77)
                                .withOpacity(0.2),
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svgs/teslamodelx.svg",
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Tesla Model X",
                                          style: GoogleFonts.cairo(
                                            textStyle: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 99, 98, 98),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Electric SUV",
                                          style: GoogleFonts.cairo(
                                            textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 99, 98, 98),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "This is just dummy profile UI made by @Mbilalcodes, map image is from unsplash.com and Tesla Model X svg is from svgrepo.com, contact us at Mbilalcodes@gmail.com for app development and python development.",
                              style: GoogleFonts.cairo(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              height: 60,
              color: const Color.fromARGB(255, 33, 49, 77),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.message,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Chat",
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Call",
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
