import 'package:flutter/material.dart';
import 'package:gitpulse/pages/contributionspage.dart';

import '../pages/appbar.dart';
import '../pages/bottombar.dart';
import '../pages/contributions.dart';
import '../pages/quickaccess.dart';
import '../pages/userprofile.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color(0xFF232F34), // Dark background matching ShadCN
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title with ShadCN's text color
            Text(
              'Welcome to GitHub Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color set to white
              ),
            ),

            SizedBox(height: 30), // Add some space

            // GitHub Login Button (OAuth)
            ElevatedButton.icon(
              onPressed: () {
                // Implement GitHub OAuth login here
                print("GitHub Login button pressed.");
              },
              icon: Image.asset(
                "images/github.png", // GitHub logo path
                height: 24, // Set the height of the logo
              ),
              label: Text(
                'Log in with GitHub',
                style: TextStyle(color: Colors.white), // White text
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

            // Explore as Guest Button
            TextButton(
              onPressed: () {
                // Navigate to explore as guest or another pageNavigator.push(
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => 
          BottomNavigationBarExample(),),
                  );
              },
              child: Text(
                'Explore as Guest',
                style: TextStyle(color: Colors.blue), // Text color for the link
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF232F34), // ShadCN background color
    );
  }
}
