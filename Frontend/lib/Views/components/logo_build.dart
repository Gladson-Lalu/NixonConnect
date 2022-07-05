import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodle/Common/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoBuild extends StatelessWidget {
  const LogoBuild({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    double _logoSize = size * 0.5;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          logoUri,
          height: _logoSize,
          width: _logoSize,
          filterQuality: FilterQuality.high,
        ),
        buildLogo(
          fontSize: size,
        )
      ],
    );
  }

  buildLogo({required double fontSize}) {
    double _fontSize = fontSize * 0.09;
    return AnimatedTextKit(
      key: const Key("logo_title"),
      animatedTexts: [
        ColorizeAnimatedText(
          "FOODLE",
          textStyle: GoogleFonts.lobster(
            textStyle: TextStyle(
                fontSize: _fontSize, letterSpacing: 4),
          ),
          colors: logoTitleAnimationColors,
          speed: const Duration(milliseconds: 400),
        ),
      ],
      repeatForever: true,
      isRepeatingAnimation: true,
      pause: const Duration(seconds: 10),
    );
  }
}
