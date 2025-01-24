import 'package:flutter/material.dart';
import '../contribution/appbar.dart';
import '../contribution/filter.dart';
import '/constants.dart'; // Import the constants file
import 'login_page.dart'; // Import the LoginPage file

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // Set the background color globally
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tagline
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Track your GitHub contributions effortlessly.',
                style: textStyle(fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),

            // GitHub Login Button
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Implement GitHub OAuth login
                },
                icon: Icon(Icons.code, color: textColor),
                label: Text(
                  'Log in with GitHub',
                  style: TextStyle(color: textColor),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // GitHub branding color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),

            // Explore as Guest Button
            TextButton(
              onPressed: () {
                // Navigate to explore as guest
              },
              child: Text(
                'Explore as Guest',
                style: TextStyle(color: textColor),
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
            ),

            // Short Introduction Text
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Track your GitHub activity, RSVP to events, and stay notified.',
                style: textStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            // New "Login" Button (Green)
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the LoginPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FiltersSection()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green color for the button
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
