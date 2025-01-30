import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/constants.dart';
import 'contributionspage.dart'; // Import ContributionsPage




class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ContributionsPage(), // Home now shows ContributionsPage
    Center(child: Text("Contributions", style: textStyle(fontSize: 18))),
    Center(child: Text("Events", style: textStyle(fontSize: 18))),
    Center(child: Text("Notifications", style: textStyle(fontSize: 18))),
    Center(child: Text("Profile", style: textStyle(fontSize: 18))),
  ];

  final List<String> _titles = [
    "Contributions", 
    "Contributions",
    "Events",
    "Notifications",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: GitPulseAppBar(title: _titles[_currentIndex]), // Add AppBar
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor, // Using the constant background color
        selectedItemColor: Colors.white, // White for active icons
        unselectedItemColor: Colors.grey, // Light grey for inactive icons
        selectedLabelStyle: textStyle(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: textStyle(fontSize: 12, fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Contributions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class GitPulseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  GitPulseAppBar({this.height = kToolbarHeight, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: backgroundColor, // Light theme background
      elevation: 2,
      title: Text(
        title,
        style: textStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ), // Dark blue text color
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: GestureDetector(
            onTap: () {
              // Navigate to the Profile Screen
              Navigator.pushNamed(context, '/profile');
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/github.png'), // Replace with actual image
              radius: 18,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
