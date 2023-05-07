import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_plus/components/button.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:medical_plus/components/card.dart';
import 'package:medical_plus/components/icon.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({super.key});

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  final _searchController = TextEditingController();
  List items = [
    ['General', FontAwesomeIcons.stethoscope, '/topdoctor'],
    ['Lungs Specialist', FontAwesomeIcons.lungs, '/topdoctor'],
    ['Dentist', FontAwesomeIcons.tooth, '/topdoctor'],
    ['Psychiatrist', FontAwesomeIcons.brain, '/topdoctor'],
    ['Covid-19', FontAwesomeIcons.virusCovid, '/topdoctor'],
    ['Surgeon', FontAwesomeIcons.syringe, '/topdoctor'],
    ['Cardiologist', FontAwesomeIcons.heartPulse, '/topdoctor']
  ];
  @override
  Widget build(BuildContext context) {
    Map data = {
      'img': 'lib/images/Image.png',
      'name': 'Dr. Marcus Horizon',
      'job': 'Chardiologist',
      'rating': 4.7,
      'distance': 1.2
    };
    return Scaffold(
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
          'Find Doctors',
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
            padding: EdgeInsets.all(20.0),
            child: Icon(FontAwesomeIcons.ellipsisVertical,
                color: Color.fromRGBO(16, 22, 35, 1.000)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Find a doctor',
                    hintStyle: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(FontAwesomeIcons.magnifyingGlass),
                    ),
                    prefixIconColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: .7, color: Colors.black12),
                        borderRadius: BorderRadius.circular(50))),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Category',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 22, 35, 1.000),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => MyButton(
                          text: items[index][0],
                          icon: items[index][1],
                          routeName: items[index][2],
                        )),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Recommended Doctors',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 22, 35, 1.000),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 286,
                  child: Swiper(
                    itemWidth: 230,
                    itemCount: 5,
                    viewportFraction: 0.8,
                    scale: .9,
                    itemBuilder: (context, index) {
                      return DoctorCard(
                        data: data,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Your Recent Doctors',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 22, 35, 1.000),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => DoctorIcon(
                        img: 'lib/images/Image.png', text: 'Dr. Marcus')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
