import 'package:flutter/material.dart';
import '/constants.dart';

class GetStartedSection extends StatelessWidget {
  final VoidCallback onActionTap;

  GetStartedSection({required this.onActionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: backgroundColor,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Get Started with GitPulse",
                style: textStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Description
              Text(
                "Track your first contribution or RSVP to an event!",
                style: textStyle(fontSize: 14),
              ),
              SizedBox(height: 16),
              // Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onActionTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0C234C), // Deep blue accent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Explore Contributions",
                    style: textStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
