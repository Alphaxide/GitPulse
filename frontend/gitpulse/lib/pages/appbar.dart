import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define constant colors
const Color backgroundColor = Color(0xFF232F34);
const Color textColor = Colors.white;

TextStyle textStyle({double fontSize = 14, FontWeight fontWeight = FontWeight.normal}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: textColor,
  );
}

class GitPulseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  GitPulseAppBar({this.height = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Light theme background
      elevation: 2,
      title: Text(
        "GitPulse",
        style: textStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ).copyWith(color: Color(0xFF0C234C)), // Dark blue text color
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
