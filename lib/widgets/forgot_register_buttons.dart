import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';

class ForgotRegisterButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const ForgotRegisterButton({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed;
      },
      child: Text(title,
          style: kTextStyle.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0165ff))),
    );
  }
}
