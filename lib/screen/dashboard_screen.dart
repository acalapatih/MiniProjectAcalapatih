import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mini_project_acalapatih/screen/insight_screen.dart';
import 'package:mini_project_acalapatih/widget/card_analytic_widget.dart';
import 'package:mini_project_acalapatih/widget/dot_widget.dart';
import 'package:mini_project_acalapatih/widget/work_log_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()).toUpperCase();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Text(
                formattedDate,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF757276)
                ),
              ),
              const Text(
                "Dashboard",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 130,
      ),
      body: ListView(
        children: [
          const WorkLogWidget(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSecondary
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotWidget(dotColor: Theme.of(context).colorScheme.secondary),
                    const SizedBox.square(dimension: 10),
                    DotWidget(dotColor: Theme.of(context).colorScheme.secondary),
                    const SizedBox.square(dimension: 10),
                    DotWidget(dotColor: Theme.of(context).colorScheme.primary),
                  ],
                ),
                const SizedBox.square(dimension: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Insight & Analytics",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                ),
                const SizedBox.square(dimension: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const InsightScreen()));
                        },
                        child: const CardAnalyticWidget(
                            title: "Expenditure",
                            timeline: "19 Aug - Now",
                            pointColor: Color(0xFFFD8663),
                            taskCount: "1426"
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const InsightScreen()));
                        },
                        child: const CardAnalyticWidget(
                            title: "Habits Trend",
                            timeline: "19 Aug - Now",
                            pointColor: Color(0xFF9747FF),
                            taskCount: "1426"
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
