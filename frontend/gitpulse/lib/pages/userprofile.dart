import 'package:flutter/material.dart';
import '/constants.dart';

class UserProfilePage extends StatelessWidget {
  final String avatarUrl; // GitHub avatar URL
  final String username; // GitHub username
  final String bio; // GitHub bio
  final int repositoriesCount; // GitHub repositories count

  UserProfilePage({
    required this.avatarUrl,
    required this.username,
    required this.bio,
    required this.repositoriesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: textStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF0C234C)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // GitHub Avatar
                CircleAvatar(
                  backgroundImage: NetworkImage(avatarUrl),
                  radius: 50,
                ),
                SizedBox(height: 16),
                // Username
                Text(
                  username,
                  style: textStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                // Bio
                Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: textStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ).copyWith(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 16),
                // Repositories Count
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Repositories: $repositoriesCount',
                      style: textStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ).copyWith(color: Color(0xFF0C234C)),
                    ),
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
