import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.rokkittTextTheme(),
      ),
      home: const LoginScreen(),
      routes: {LoginScreen.id: (context) => const LoginScreen()},
    ));
