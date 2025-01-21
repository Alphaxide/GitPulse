import 'package:flutter/material.dart';
import '/constants.dart';

class QuickAccessButtons extends StatelessWidget {
  final Function onContributionsTap;
  final Function onEventsTap;
  final Function onNotificationsTap;

  QuickAccessButtons({
    required this.onContributionsTap,
    required this.onEventsTap,
    required this.onNotificationsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Contributions Button
          _buildQuickAccessButton(
            icon: Icons.code,
            label: "Contributions",
            color: Colors.blue,
            onTap: onContributionsTap,
          ),
          // Events Button
          _buildQuickAccessButton(
            icon: Icons.calendar_today,
            label: "Events",
            color: Colors.green,
            onTap: onEventsTap,
          ),
          // Notifications Button
          _buildQuickAccessButton(
            icon: Icons.notifications,
            label: "Notifications",
            color: Colors.orange,
            onTap: onNotificationsTap,
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessButton({
    required IconData icon,
    required String label,
    required Color color,
    required Function onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon
                Icon(
                  icon,
                  size: 36,
                  color: color,
                ),
                SizedBox(height: 8),
                // Label
                Text(
                  label,
                  style: textStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
