import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
      child: Container(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "lib/images/addd.svg",
                // ignore: deprecated_member_use
                color: const Color.fromRGBO(25, 154, 142, 1.000),
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Medical Plus',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(25, 154, 142, 1.000),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Text('Let’s get started!',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Text('Login to enjoy the features ',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),
              Text('we’ve provided, and stay healthy!',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/mainpage');
              },
              child: Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(25, 154, 142, 1.000),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(25, 154, 142, 1.000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(25, 154, 142, 1.000)),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
