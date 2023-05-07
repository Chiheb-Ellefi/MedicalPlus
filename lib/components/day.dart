import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Day extends StatelessWidget {
  Day({super.key, required this.plusDate});
  int plusDate;

  @override
  Widget build(BuildContext context) {
    Color numTextColor =
        (plusDate == 0) ? Colors.white : Color.fromRGBO(16, 22, 35, 1.0);
    Color dayTextColor = (plusDate == 0) ? Colors.white : Colors.grey;
    Color color =
        (plusDate == 0) ? Color.fromRGBO(25, 154, 142, 1.000) : Colors.white;
    String formattedDay =
        DateFormat.d().format((DateTime.now()).add(Duration(days: plusDate)));
    String formattedDate =
        DateFormat.E().format((DateTime.now()).add(Duration(days: plusDate)));
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: Color.fromRGBO(25, 154, 142, 1.000), width: 1),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            formattedDate,
            style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 15, color: dayTextColor)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            formattedDay,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
              fontSize: 25,
              color: numTextColor,
            )),
          ),
        ]),
      ),
    );
  }
}
