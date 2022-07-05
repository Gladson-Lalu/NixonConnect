import 'package:flutter/material.dart';
import 'package:foodle/Common/theme.dart';
import 'package:foodle/Views/Screens/Launch/launch_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme(),
      title: 'foodle',
      home: const LaunchScreen(),
    );
  }
}
