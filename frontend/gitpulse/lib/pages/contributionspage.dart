import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gitpulse/pages/bottombar.dart';
 // Custom AppBar widget
import '../constants.dart';
import '../contribution/filter.dart';
import '../contribution/visual.dart';
import 'appbar.dart';
import 'getstarted.dart';
import 'quickaccess.dart';
class ContributionsPage extends StatefulWidget {
  @override
  _ContributionsPageState createState() => _ContributionsPageState();
}

class _ContributionsPageState extends State<ContributionsPage> {
  @override
  Widget build(BuildContext context) {
    // Sample Data for Graph
    final commitsData = [
      FlSpot(0, 5),
      FlSpot(1, 8),
      FlSpot(2, 10),
      FlSpot(3, 7),
      FlSpot(4, 12),
      FlSpot(5, 9),
      FlSpot(6, 15),
    ];

    final pullRequestsData = [
      FlSpot(0, 2),
      FlSpot(1, 5),
      FlSpot(2, 6),
      FlSpot(3, 4),
      FlSpot(4, 8),
      FlSpot(5, 5),
      FlSpot(6, 7),
    ];

    final issuesData = [
      FlSpot(0, 1),
      FlSpot(1, 3),
      FlSpot(2, 2),
      FlSpot(3, 4),
      FlSpot(4, 5),
      FlSpot(5, 3),
      FlSpot(6, 4),
    ];

    return Scaffold(
     // appBar: GitPulseAppBar(), // Importing custom AppBar
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FiltersSection(), // Filters for selecting data
            VisualGraphsSection(
              commitsData: commitsData,
              pullRequestsData: pullRequestsData,
              issuesData: issuesData,
            ), // Graph section
            QuickAccessButtons(
            onContributionsTap: () {
              print("Navigate to Contributions");
            },
            onEventsTap: () {
              print("Navigate to Events");
            },
            onNotificationsTap: () {
              print("Navigate to Notifications");
            },
          ), // Buttons for Contributions, Events, Notifications
            GetStartedSection(onActionTap: () {  },), // "Get Started" Call-to-Action
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigationBarExample(), // Bottom Navigation Bar
    );
  }
}
