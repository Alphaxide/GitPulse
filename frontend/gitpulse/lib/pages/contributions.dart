import 'package:flutter/material.dart';
import '/constants.dart';

class ContributionStatsSection extends StatelessWidget {
  final int totalCommits;
  final int totalPullRequests;
  final int totalIssues;

  ContributionStatsSection({
    required this.totalCommits,
    required this.totalPullRequests,
    required this.totalIssues,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Commits Card
          _buildStatCard(
            icon: Icons.code,
            label: "Commits",
            value: totalCommits,
            color: Colors.green,
          ),
          // Pull Requests Card
          _buildStatCard(
            icon: Icons.merge_type,
            label: "Pull Requests",
            value: totalPullRequests,
            color: Colors.blue,
          ),
          // Issues Card
          _buildStatCard(
            icon: Icons.bug_report,
            label: "Issues",
            value: totalIssues,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required int value,
    required Color color,
  }) {
    return Expanded(
      child: Card(
        color: backgroundColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Icon(
                icon,
                size: 32,
                color: color,
              ),
              SizedBox(height: 8),
              // Value
              Text(
                '$value',
                style: textStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ).copyWith(color: color),
              ),
              SizedBox(height: 4),
              // Label
              Text(
                label,
                style: textStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
