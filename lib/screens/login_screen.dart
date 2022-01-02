import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_screen/widgets/login_button.dart';
import 'package:login_screen/constants.dart';
import 'package:login_screen/widgets/text_field_builder.dart';
import 'package:login_screen/widgets/forgot_register_buttons.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool _showPassword = false;
  final formKey = GlobalKey<FormState>();
  late Image myImage;

  @override
  void initState() {
    super.initState();
    myImage = Image.asset("assets/images/LoginGif.gif");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              myImage,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child:
                    Text('Login', textAlign: TextAlign.left, style: kTextStyle),
              ),
              kSpacer,
              const TextFieldBuilder(
                title: 'Email ID',
                icon: Icons.alternate_email_outlined,
                showPassword: false,
              ),
              kSpacer,
              TextFieldBuilder(
                title: 'Password',
                icon: Icons.lock_outline_rounded,
                showPassword: _showPassword,
                iconButton: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ForgotRegisterButton(
                      title: 'Forgot Password?',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              LoginButton(
                formKey: formKey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to this app?',
                      style: kTextStyle.copyWith(
                          fontSize: 13, color: const Color(0xFF7d8795))),
                  ForgotRegisterButton(title: 'Register', onPressed: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
