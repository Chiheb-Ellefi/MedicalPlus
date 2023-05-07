import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Date extends StatelessWidget {
  Date({super.key, required this.plusTime});
  int plusTime;
  @override
  Widget build(BuildContext context) {
    String time =
        (9 + plusTime <= 12) ? '${9 + plusTime} AM' : '${9 + plusTime - 12} PM';
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: Color.fromRGBO(25, 154, 142, 1.000), width: 1),
        ),
        child: Center(
          child: Text(
            time,
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    color: Color.fromRGBO(16, 22, 35, 1.00),
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
