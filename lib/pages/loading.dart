import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/mainpage');
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        color: const Color.fromRGBO(25, 154, 142, 1.000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: SvgPicture.asset(
              "lib/images/addd.svg",
              color: Colors.white,
              height: 150,
              width: 150,
            )),
            Text('Medical Plus',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
