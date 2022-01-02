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
      padding: const EdgeInsets.symmetric(horizontal: 18),
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
          hintStyle: kTextStyle.copyWith(fontSize: 20, color: Colors.grey),
          icon: Icon(
            icon,
            size: 30,
          ),
        ),
      ),
    );
  }
}
