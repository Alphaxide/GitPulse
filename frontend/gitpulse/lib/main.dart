import 'package:flutter/material.dart';
import 'onboarding/welcome.dart';

void main() {
  runApp(GitPulse());
}

const Color backgroundColor = Color(0xFF232F34);

class GitPulse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Wrap your app in MaterialApp
      title: 'GitPulse',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.green,
      ),
      home: WelcomeScreen(), 
      debugShowCheckedModeBanner: false, // Change the home to your screen
    );
  }
}