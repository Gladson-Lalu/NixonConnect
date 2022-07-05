import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodle/Common/constant.dart';
import 'package:foodle/Views/Screens/Login/login_screen.dart';

import '../../components/already_have_an_account_check.dart';
import '../../components/logo_build.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import '../../components/background.dart';
import 'components/divider.dart';
import 'components/social_icon.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Confirm Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrVerticalDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: facebookUri,
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: twitterUri,
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: googleUri,
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
