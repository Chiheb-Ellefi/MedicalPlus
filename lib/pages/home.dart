import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_plus/components/button.dart';
import 'package:medical_plus/components/card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _searchController = TextEditingController();
  int _selectedScreenIndex = 0;
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Find your desire health solution !',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(16, 22, 35, 1.000),
                              fontSize: 30,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      FontAwesomeIcons.bell,
                      size: 30,
                      color: Color.fromRGBO(16, 22, 35, 1.000),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Search doctor , drugs , articles ...',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    icon: FontAwesomeIcons.stethoscope,
                    text: 'Doctor',
                    routeName: '/loading',
                  ),
                  MyButton(
                    icon: FontAwesomeIcons.capsules,
                    text: 'Capsules',
                    routeName: '/loading',
                  ),
                  MyButton(
                    icon: FontAwesomeIcons.hospital,
                    text: 'Hospital',
                    routeName: '/loading',
                  ),
                  MyButton(
                    icon: FontAwesomeIcons.truckMedical,
                    text: 'Ambulance',
                    routeName: '/loading',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(232, 243, 241, 1.000),
                ),
                padding: const EdgeInsets.only(left: 20, right: 5, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Early protection for your family health",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(25, 154, 142, 1.00),
                                shadowColor:
                                    const Color.fromRGBO(25, 154, 142, 1.00),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15)),
                            onPressed: () {},
                            child: Text(
                              'Learn More',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ))
                      ],
                    ),
                    Image.asset(
                      'lib/images/Image.png',
                      height: 140,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Top Doctor',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(16, 22, 35, 1.000),
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/loading');
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/topdoctor');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'See All',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color(0xFF199A8E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 310,
                child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contsxt, index) {
                      return DoctorCard(data: data);
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Health article',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(16, 22, 35, 1.000),
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/loading');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'See All',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFF199A8E),
                                fontSize: 18,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Color.fromRGBO(25, 154, 142, 1.000), width: .3),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'lib/images/pills.png',
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              'The 25 Healthiest Fruits You Can Eat, According to a Nutritionist',
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Jun 10, 2021 . 5min read',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500)),
                          )
                        ],
                      ),
                      const Icon(
                        FontAwesomeIcons.solidBookmark,
                        color: Color.fromRGBO(25, 154, 142, 1.000),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconSize: 27,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(25, 154, 142, 1.00),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Icon(FontAwesomeIcons.house),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Icon(FontAwesomeIcons.envelope),
              ),
              label: 'mail'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Icon(FontAwesomeIcons.calendar),
              ),
              label: 'calendar'),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Icon(FontAwesomeIcons.user),
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
