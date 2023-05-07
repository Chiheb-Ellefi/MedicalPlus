import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctor extends StatelessWidget {
  Doctor({super.key, required this.data});
  Map data = {};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/detail', arguments: data);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: const Color.fromRGBO(25, 154, 142, 1.000), width: .3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    data['img'],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color(0xFF199A8E), fontSize: 15))),
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
      ),
    );
  }
}
