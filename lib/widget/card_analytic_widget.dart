import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CardAnalyticWidget extends StatelessWidget {
  final String title;
  final String timeline;
  final Color pointColor;
  final String taskCount;

  const CardAnalyticWidget({
    super.key,
    required this.title,
    required this.timeline,
    required this.pointColor,
    required this.taskCount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary
                    )
                ),
                const SizedBox(height: 5),
                Text(
                    timeline,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                    )
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 6),
                            const FlSpot(1, 5.8),
                            const FlSpot(2, 5.5),
                            const FlSpot(3, 5.3),
                            const FlSpot(4, 5.2),
                            const FlSpot(5, 5.1),
                            const FlSpot(6, 5),
                          ],
                          isCurved: true,
                          color: pointColor,
                          dotData: const FlDotData(show: true),
                          belowBarData: BarAreaData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.onTertiary,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Row(
              children: [
                Text(
                    taskCount,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary
                    )
                ),
                const SizedBox.square(dimension: 10),
                Text(
                    "Task",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
