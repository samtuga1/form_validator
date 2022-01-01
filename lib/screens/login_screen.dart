import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset("assets/images/loginPhoto.png"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    textStyle: const TextStyle(
                        color: Color(0xFF0c1f3b),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email ID',
                    hintStyle: TextStyle(fontSize: 20),
                    icon: Icon(
                      Icons.alternate_email_outlined,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_outlined)),
                    hintText: 'Password',
                    hintStyle: const TextStyle(fontSize: 20),
                    icon: const Icon(
                      Icons.lock_outline_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.rokkitt(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Material(
                  child: Ink(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF0165ff)),
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.rokkitt(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to this app?',
                    style: GoogleFonts.rokkitt(
                      textStyle: const TextStyle(
                        color: Color(0xFF7d8795),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: GoogleFonts.rokkitt(
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
