import 'package:flutter/material.dart';
import 'package:router_navigation/screens/bmi_screen.dart';
import 'package:router_navigation/screens/intro_screen.dart';

void main() {
  runApp(const Globe());
}

class Globe extends StatelessWidget {
  const Globe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen(),
      }, 
      initialRoute: '/',
    );
  }
}
