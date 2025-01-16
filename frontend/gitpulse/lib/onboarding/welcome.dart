import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: ScaffoldPage(
        backgroundColor: Color(0xFFE0E5EC),  // Light gray background for neumorphism
        content: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo with Neumorphism effect (using Card for neumorphism look)
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/logo.png', height: 150),
                ),
              ),

              // Tagline Text with Neumorphism effect
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Track your GitHub contributions effortlessly.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0C234C),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // GitHub Login Button with Neumorphism effect
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: FilledButton.icon(
                  onPressed: () {
                    // Implement GitHub OAuth login
                  },
                  icon: Icon(FluentIcons.github),
                  label: Text('Log in with GitHub'),
                  style: ButtonStyle(
                    backgroundColor: ButtonState.all(Colors.black),
                    padding: ButtonState.all(EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    elevation: ButtonState.all(5), // Light shadow for neumorphism effect
                    shape: ButtonState.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),

              // Explore as Guest Button with Neumorphism effect
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    // Navigate to explore as guest
                  },
                  child: Text('Explore as Guest'),
                  style: ButtonStyle(
                    foregroundColor: ButtonState.all(Colors.blue),
                    padding: ButtonState.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                    shape: ButtonState.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    side: ButtonState.all(BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              // Short Introduction Text with Neumorphism effect
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Track your GitHub activity, RSVP to events, and stay notified.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
