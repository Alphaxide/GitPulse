import 'package:flutter/material.dart';
import 'package:gitpulse/constants.dart';

class FiltersSection extends StatefulWidget {
  @override
  _FiltersSectionState createState() => _FiltersSectionState();
}

class _FiltersSectionState extends State<FiltersSection> {
  bool isExpanded = false; // Controls the collapsible card
  String selectedDateRange = 'Last 7 Days';
  String selectedRepository = 'All Repositories';
  String selectedContributionType = 'Commits';

  final List<String> dateRanges = [
    'Last 7 Days',
    'Last 30 Days',
    'Custom Range',
  ];

  final List<String> repositories = [
    'All Repositories',
    'Repo 1',
    'Repo 2',
    'Repo 3',
  ];

  final List<String> contributionTypes = [
    'Commits',
    'Pull Requests',
    'Issues',
  ];

  void clearFilters() {
    setState(() {
      selectedDateRange = 'Last 7 Days';
      selectedRepository = 'All Repositories';
      selectedContributionType = 'Commits';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Collapsible Card Header
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Card(
            margin: EdgeInsets.all(8),
            elevation: 2,
            color: backgroundColor,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filters',
                    style: textStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: textColor,
                  ),
                ],
              ),
            ),
          ),
        ),

        // Collapsible Content
        if (isExpanded)
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            elevation: 2,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Date Range Filter
                  Text(
                    'Date Range',
                    style: textStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: selectedDateRange,
                    dropdownColor: backgroundColor,
                    icon: Icon(Icons.arrow_drop_down, color: textColor),
                    items: dateRanges
                        .map((range) => DropdownMenuItem(
                              value: range,
                              child: Text(range, style: textStyle()),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDateRange = value!;
                      });
                    },
                  ),
                  SizedBox(height: 16),

                  // Repository Filter
                  Text(
                    'Repository',
                    style: textStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: selectedRepository,
                    dropdownColor: backgroundColor,
                    icon: Icon(Icons.arrow_drop_down, color: textColor),
                    items: repositories
                        .map((repo) => DropdownMenuItem(
                              value: repo,
                              child: Text(repo, style: textStyle()),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedRepository = value!;
                      });
                    },
                  ),
                  SizedBox(height: 16),

                  // Type of Contribution Filter
                  Text(
                    'Type of Contribution',
                    style: textStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: selectedContributionType,
                    dropdownColor: backgroundColor,
                    icon: Icon(Icons.arrow_drop_down, color: textColor),
                    items: contributionTypes
                        .map((type) => DropdownMenuItem(
                              value: type,
                              child: Text(type, style: textStyle()),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedContributionType = value!;
                      });
                    },
                  ),
                  SizedBox(height: 16),

                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: clearFilters,
                        child: Text(
                          'Clear Filters',
                          style: textStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Add apply filters functionality
                          print('Filters Applied');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Accent color for the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Apply Filters',
                          style: textStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
