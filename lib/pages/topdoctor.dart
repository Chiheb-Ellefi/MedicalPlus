import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_plus/components/doctorcard.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Map data = {
      'img': 'lib/images/doctor.png',
      'name': 'Dr. Marcus Horizon',
      'job': 'Chardiologist',
      'rating': 4.7,
      'distance': 1.2
    };
    return Scaffold(
        backgroundColor: Colors.grey[50],
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
            'Top Doctors',
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
              padding: EdgeInsets.all(5.0),
              child: Icon(FontAwesomeIcons.ellipsisVertical,
                  color: Color.fromRGBO(16, 22, 35, 1.000)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) => Doctor(
              data: data,
            ),
          ),
        ));
  }
}
