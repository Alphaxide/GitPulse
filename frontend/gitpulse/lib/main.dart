import 'package:flutter/material.dart';
import 'onboarding/welcome.dart';

void main() {
  runApp(GitPulse());
}

class GitPulse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Wrap your app in MaterialApp
      title: 'GitPulse',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomeScreen(),  // Change the home to your screen
    );
  }
}