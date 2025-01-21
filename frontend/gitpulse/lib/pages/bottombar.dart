import 'package:flutter/material.dart';
import '/constants.dart';

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home", style: textStyle(fontSize: 18))),
    Center(child: Text("Contributions", style: textStyle(fontSize: 18))),
    Center(child: Text("Events", style: textStyle(fontSize: 18))),
    Center(child: Text("Notifications", style: textStyle(fontSize: 18))),
    Center(child: Text("Profile", style: textStyle(fontSize: 18))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
        unselectedLabelStyle: textStyle(fontSize: 12, fontWeight: FontWeight.normal, ),
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
