import 'package:flutter/material.dart';
import 'package:medical_plus/pages/doctordetail.dart';
import 'package:medical_plus/pages/finddoctor.dart';
import 'package:medical_plus/pages/first.dart';
import 'package:medical_plus/pages/home.dart';
import 'package:medical_plus/pages/loading.dart';
import 'package:medical_plus/pages/login.dart';
import 'package:medical_plus/pages/second.dart';
import 'package:medical_plus/pages/third.dart';
import 'package:medical_plus/pages/mainpage.dart';
import 'package:medical_plus/pages/topdoctor.dart';
import 'package:medical_plus/pages/welcome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      initialRoute: '/mainpage',
      routes: {
        '/mainpage': (context) => const MainPage(),
        '/loading': (context) => const Loading(),
        '/first': (context) => const First(),
        '/second': (context) => const Second(),
        '/third': (context) => const Third(),
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/home': (context) => const MyHomePage(),
        '/topdoctor': (context) => const TopDoctor(),
        '/finddoctor': (context) => const FindDoctor(),
        '/detail': (context) => const Detail(),
      },
      home: const MainPage(),
    );
  }
}
