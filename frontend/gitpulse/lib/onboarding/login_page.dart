import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.black, // GitHub's branding color for the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              'Welcome to GitHub Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30), // Add some space

            // GitHub Login Button (OAuth)
            ElevatedButton.icon(
              onPressed: () {
                // Implement GitHub OAuth login here
                print("GitHub Login button pressed.");
              },
              icon: Image.asset(
                'assets/github_logo.png', // GitHub logo path
                height: 24, // Set the height of the logo
              ),
              label: Text(
                'Log in with GitHub',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF24292F), // GitHub's dark gray color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                ),
              ),
            ),

            SizedBox(height: 20), // Add some space between the buttons

            // Optionally, you can add more login options or instructions below:
            TextButton(
              onPressed: () {
                // Navigate to explore as guest or another page
                print("Explore as Guest pressed.");
              },
              child: Text(
                'Explore as Guest',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
