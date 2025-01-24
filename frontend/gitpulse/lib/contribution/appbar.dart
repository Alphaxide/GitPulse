import 'package:flutter/material.dart';
import 'package:gitpulse/constants.dart';

class ContributionsAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor, // Using the constant background color
      title: Text(
        'Contributions',
        style: textStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: false, // Left align the title
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: textColor), // Search icon
          onPressed: () {
            // TODO: Add search functionality
            print("Search tapped");
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: textColor), // Three-dot menu icon
          onPressed: () {
            // TODO: Add menu functionality
            print("Menu tapped");
          },
        ),
      ],
      elevation: 0, // No shadow for a clean look
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
