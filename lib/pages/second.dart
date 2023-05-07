import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset('lib/images/doc3.png'))),
          Expanded(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(246, 248, 255, 1.000),
                        Colors.white
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Text('Find a lot of specialist doctors in one place',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(16, 22, 35, 1.000)),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 20,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(25, 154, 142, .400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 20,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(25, 154, 142, 1.00),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 20,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(25, 154, 142, .400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/third');
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(25, 154, 142, 1.00),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0))),
                          child: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 50,
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    ));
  }
}
