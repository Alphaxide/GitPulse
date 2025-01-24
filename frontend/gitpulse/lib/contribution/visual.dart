import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gitpulse/constants.dart'; // Assuming you have textStyle, backgroundColor, etc.

class VisualGraphsSection extends StatelessWidget {
  final List<FlSpot> commitsData;
  final List<FlSpot> pullRequestsData;
  final List<FlSpot> issuesData;

  VisualGraphsSection({
    required this.commitsData,
    required this.pullRequestsData,
    required this.issuesData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(16),
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contribution Overview',
              style: textStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 250, // Height for the chart
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTextStyles: (context, value) =>
                          textStyle(fontSize: 12),
                      margin: 8,
                    ),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (context, value) =>
                          textStyle(fontSize: 12),
                      margin: 8,
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  lineBarsData: [
                    // Commits Line
                    LineChartBarData(
                      spots: commitsData,
                      isCurved: true,
                      colors: [Colors.green],
                      barWidth: 3,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(show: false),
                    ),
                    // Pull Requests Line
                    LineChartBarData(
                      spots: pullRequestsData,
                      isCurved: true,
                      colors: [Colors.blue],
                      barWidth: 3,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(show: false),
                    ),
                    // Issues Line
                    LineChartBarData(
                      spots: issuesData,
                      isCurved: true,
                      colors: [Colors.orange],
                      barWidth: 3,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Colors.white,
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((spot) {
                          return LineTooltipItem(
                            '${spot.barIndex == 0 ? 'Commits' : spot.barIndex == 1 ? 'PRs' : 'Issues'}: ${spot.y.toInt()}',
                            textStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Legends
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLegend('Commits', Colors.green),
                _buildLegend('Pull Requests', Colors.blue),
                _buildLegend('Issues', Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLegend(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 8),
        Text(label, style: textStyle(fontSize: 14)),
      ],
    );
  }
}
