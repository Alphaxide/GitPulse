import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gitpulse/constants.dart'; // Assuming you have textStyle, backgroundColor, etc.

class VisualGraphsSection extends StatelessWidget {
  final List<FlSpot> commitsData;
  final List<FlSpot> pullRequestsData;
  final List<FlSpot> issuesData;

  const VisualGraphsSection({
    Key? key,
    required this.commitsData,
    required this.pullRequestsData,
    required this.issuesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
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
            const SizedBox(height: 16),
            SizedBox(
              height: 250, // Graph Height
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: textStyle(fontSize: 12),
                          );
                        },
                       // margin: 8,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: textStyle(fontSize: 12),
                          );
                        },
                      //  margin: 8,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  lineBarsData: [
                    _buildLineData(commitsData, Colors.green),
                    _buildLineData(pullRequestsData, Colors.blue),
                    _buildLineData(issuesData, Colors.orange),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      tooltipPadding: const EdgeInsets.all(8),
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((spot) {
                          return LineTooltipItem(
                            '${_getLabel(spot.barIndex)}: ${spot.y.toInt()}',
                            textStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildLegends(),
          ],
        ),
      ),
    );
  }

  LineChartBarData _buildLineData(List<FlSpot> data, Color color) {
    return LineChartBarData(
      spots: data,
      isCurved: true,
      color: color,
      barWidth: 3,
      isStrokeCapRound: true,
      belowBarData: BarAreaData(show: false),
    );
  }

  Widget _buildLegends() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLegend('Commits', Colors.green),
        _buildLegend('Pull Requests', Colors.blue),
        _buildLegend('Issues', Colors.orange),
      ],
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
        const SizedBox(width: 8),
        Text(label, style: textStyle(fontSize: 14)),
      ],
    );
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Commits';
      case 1:
        return 'PRs';
      case 2:
        return 'Issues';
      default:
        return 'Unknown';
    }
  }
}
