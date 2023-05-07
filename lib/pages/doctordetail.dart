import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_plus/components/card.dart';
import 'package:medical_plus/components/date.dart';
import 'package:readmore/readmore.dart';
import 'package:intl/intl.dart';
import '../components/day.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Map data = {};
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var dateParse = new DateTime(now.year, now.month + 1, 0);
    var formattedDay = "${dateParse.day}";
    data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
            child: Icon(FontAwesomeIcons.chevronLeft,
                color: Color.fromRGBO(16, 22, 35, 1.000)),
          ),
        ),
        title: Text(
          'Doctor Detail',
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              color: const Color.fromRGBO(16, 22, 35, 1.000)),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(FontAwesomeIcons.ellipsisVertical,
                color: Color.fromRGBO(16, 22, 35, 1.000)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          data['img'],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data['name'],
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                              color: const Color.fromRGBO(16, 22, 35, 1.000)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['job'],
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                                color: Colors.grey)),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 154, 142, .200),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.solidStar,
                                size: 17,
                                color: Color.fromRGBO(25, 154, 142, 1.000),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(data['rating'].toString(),
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          color: Color(0xFF199A8E),
                                          fontSize: 15))),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(FontAwesomeIcons.locationDot,
                                  size: 17, color: Colors.grey),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${data['distance']} Km away',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 15)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'About',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 22, 35, 1.000),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 20,
              ),
              ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.  ',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 22, 35, .600),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                trimLines: 3,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                lessStyle: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(25, 154, 142, 1.00),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
                moreStyle: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(25, 154, 142, 1.00),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 120,
                  child: Swiper(
                    itemCount: int.parse(formattedDay),
                    viewportFraction: 0.2,
                    scale: .3,
                    itemBuilder: (context, index) {
                      return Day(
                        plusDate: index,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 210,
                child: GridView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) => Date(
                    plusTime: index,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2,
                  ),
                ),
              ),
              //book Appintement button
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(25, 154, 142, .100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(
                      FontAwesomeIcons.commentDots,
                      color: Color.fromRGBO(25, 154, 142, 1.00),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 154, 142, 1.00),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          'Book Appointement',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
