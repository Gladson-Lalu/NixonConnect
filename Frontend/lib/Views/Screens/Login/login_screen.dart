import 'package:flutter/material.dart';
import 'package:foodle/Common/constant.dart';
import 'package:foodle/Views/Screens/Signup/signup_screen.dart';

import '../../components/already_have_an_account_check.dart';
import '../../components/background.dart';
import '../../components/logo_build.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isForgot = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isForgot
                    ? Text(
                        "FORGOT PASSWORD",
                        style: textStyle.copyWith(
                            color: Colors.black54),
                      )
                    : Text(
                        "LOGIN",
                        style: textStyle.copyWith(
                            color: Colors.black54),
                      ),
                SizedBox(height: size.height * 0.03),
                Hero(
                  transitionOnUserGestures: true,
                  tag: logoTag,
                  child: LogoBuild(
                    size: size.height * 0.40,
                  ),
                ),
                buildLoginForgotForm(size),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isForgot = !isForgot;
                    });
                  },
                  child: isForgot
                      ? Text(
                          "Login Now!",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.w600),
                        )
                      : Text(
                          "Forgot Password",
                          style: textStyle.copyWith(
                              fontWeight: FontWeight.w600),
                        ),
                ),
                SizedBox(height: size.height * 0.02),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildLoginForgotForm(Size size) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 100),
      firstChild: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
          ]),
      secondChild: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "CONTINUE",
              press: () {},
            ),
          ]),
      crossFadeState: isForgot
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
    );
  }
}
