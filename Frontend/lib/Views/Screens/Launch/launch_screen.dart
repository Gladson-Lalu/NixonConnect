import 'package:flutter/material.dart';
import 'package:foodle/Common/constant.dart';

import '../../components/logo_build.dart';
import 'components/sign_in_button.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  double currentOpacity = 0;

  @override
  Widget build(BuildContext context) {
    //SignInButton Animation Delay
    () async {
      Future.delayed(const Duration(milliseconds: 1900),
          () => setState(() => currentOpacity = 1));
    }.call();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Center(
            child: Hero(
              transitionOnUserGestures: true,
              tag: logoTag,
              child: LogoBuild(
                size: size.width,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: currentOpacity,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
            child: const Align(
              alignment: Alignment(0, .89),
              child: SignInButton(),
            ),
          )
        ],
      ),
    );
  }
}
