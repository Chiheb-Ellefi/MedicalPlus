import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard({super.key, required this.data});
  Map data = {};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/detail', arguments: data);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Color.fromRGBO(25, 154, 142, 1.000), width: .3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      data['img'],
                    ),
                    backgroundColor: const Color.fromRGBO(25, 154, 142, 1.000),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  data['name'],
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                      color: const Color.fromRGBO(16, 22, 35, 1.000)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(data['job'],
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        color: Colors.grey)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            size: 20,
                            color: Color.fromRGBO(25, 154, 142, 1.000),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(data['rating'].toString(),
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: Color(0xFF199A8E), fontSize: 17))),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.locationDot,
                            size: 20,
                            color: const Color.fromRGBO(16, 22, 35, 1.000),
                          ),
                          Text(
                            '${data['distance']} Km away',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(16, 22, 35, 1.000),
                                    fontSize: 17)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
