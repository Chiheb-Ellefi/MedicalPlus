import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _mailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.navigate_before,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 110,
                ),
                Text(
                  'Login',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(16, 22, 35, 1.000),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _mailController,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  hintStyle: const TextStyle(fontSize: 18),
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15),
                    child: Icon(
                      Icons.mail,
                      color: Color.fromRGBO(25, 154, 142, 1.000),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  focusColor: const Color.fromRGBO(25, 154, 142, 1.000),
                  hintText: 'Enter your Password',
                  hintStyle: const TextStyle(fontSize: 18),
                  border: const OutlineInputBorder(),
                  disabledBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(25, 154, 142, 1.000),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 8),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password ?',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(
                            25,
                            154,
                            142,
                            1.000,
                          ),
                          fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: signIn,
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromRGBO(25, 154, 142, 1.000),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Don’t have an account?',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(color: Colors.grey),
                      fontSize: 18)),
              TextSpan(
                  text: 'Sign Up',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(25, 154, 142, 1.000),
                          fontSize: 18)))
            ])),
            const SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                    child: const Divider(
                      color: Colors.grey,
                      height: 50,
                    )),
              ),
              Text(
                "OR",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 20.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      child: SvgPicture.asset(
                        'lib/images/google-icon.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text(
                      'Sign In With Google',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Color.fromRGBO(16, 22, 35, 1.000)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      child: SvgPicture.asset(
                        'lib/images/apple.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text(
                      'Sign In With Apple',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Color.fromRGBO(16, 22, 35, 1.000)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      child: SvgPicture.asset(
                        'lib/images/facebook.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text(
                      'Sign In With Facebook',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Color.fromRGBO(16, 22, 35, 1.000)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
