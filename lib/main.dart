import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/constants.dart';
import 'package:practice/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(Practice());
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF22252D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}