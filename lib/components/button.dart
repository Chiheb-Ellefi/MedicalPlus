import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.routeName});
  IconData? icon;
  String text;
  String routeName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                icon,
                size: 30,
                color: const Color.fromRGBO(25, 154, 142, 1.00),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 15, color: Colors.grey)),
          ),
        ]),
      ),
    );
  }
}
