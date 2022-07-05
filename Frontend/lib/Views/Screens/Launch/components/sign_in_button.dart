import 'package:flutter/material.dart';
import 'package:foodle/Views/Screens/Login/login_screen.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context)
          .elevatedButtonTheme
          .style!
          .copyWith(
            padding: MaterialStateProperty.all<
                    EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(horizontal: 50)),
          ),
      child: Text(
        "SIGN IN",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).backgroundColor),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginScreen()));
      },
    );
  }
}
