import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorIcon extends StatelessWidget {
  DoctorIcon({super.key, required this.img, required this.text});
  String img;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(img),
                backgroundColor: const Color.fromRGBO(25, 154, 142, 1.000),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(16, 22, 35, 1.000),
                        fontWeight: FontWeight.w400)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
