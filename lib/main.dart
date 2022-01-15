import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen/screens/registration_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.rokkittTextTheme(),
      ),
      home: const LoginScreen(),
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
    ));
