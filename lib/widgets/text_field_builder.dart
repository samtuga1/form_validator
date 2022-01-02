import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';

class TextFieldBuilder extends StatelessWidget {
  final String title;
  final IconButton? iconButton;
  final IconData icon;
  final bool showPassword;

  const TextFieldBuilder({
    required this.showPassword,
    required this.title,
    this.iconButton,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextFormField(
        obscureText: showPassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field cannot be left empty';
          }
        },
        decoration: InputDecoration(
          suffixIcon: iconButton,
          hintText: title,
          hintStyle: kTextStyle.copyWith(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w100),
          icon: Icon(
            icon,
            size: 23,
          ),
        ),
      ),
    );
  }
}
