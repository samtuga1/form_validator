import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';
import 'package:login_screen/screens/registration_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Material(
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xFF0165ff)),
          height: 50,
          child: InkWell(
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushNamed(context, RegistrationScreen.id);
              }
            },
            child: Center(
              child: Text('Login',
                  style:
                      kTextStyle.copyWith(fontSize: 23, color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
