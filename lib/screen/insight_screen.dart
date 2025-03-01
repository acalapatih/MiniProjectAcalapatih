import 'package:flutter/material.dart';
import 'package:mini_project_acalapatih/widget/calendar_widget.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Habits",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onPrimary
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFD9E3FB),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary
        )
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox.square(dimension: 30),
              Text(
                "Insight & Data",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
              const SizedBox.square(dimension: 15),
              Divider(
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox.square(
                          dimension: 170,
                          child: CircularProgressIndicator(
                            value: 100 / 100,
                            color: Colors.transparent,
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5996F6)),
                            strokeWidth: 5,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "100%",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.primary
                              ),
                            ),
                            const SizedBox.square(dimension: 5),
                            const Text(
                              "August",
                              style: TextStyle(
                                color: Color(0xFF6F6C6D)
                              ),
                            ),
                            const Text(
                              "Tracked Rate",
                              style: TextStyle(
                                color: Color(0xFF6F6C6D)
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 20),
                    Row(
                      children: [
                        Text(
                          "Work Streaks",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primaryFixed
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 20),
                    Row(
                      children: [
                        Image.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? "assets/images/img_reward_dark.png"
                              : "assets/images/img_reward_light.png",
                        ),
                        const SizedBox.square(dimension: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Longest & Current",
                              style: TextStyle(
                                  color: Color(0xFF6F6C6D)
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "29",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).colorScheme.primaryFixed
                                  ),
                                ),
                                const SizedBox.square(dimension: 10),
                                const Text(
                                  "Days",
                                  style: TextStyle(
                                    color: Color(0xFF6F6C6D)
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "28 Jul 2024 - Today",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6F6C6D)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 40),
                    Row(
                      children: [
                        Text(
                          "Yearly View",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primaryFixed
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          color: const Color(0xFF6793EF),
                        ),
                        const SizedBox.square(dimension: 10),
                        Text(
                          "Tracked",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primaryFixed
                          ),
                        ),
                        const SizedBox.square(dimension: 20),
                        Container(
                          width: 6,
                          height: 6,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox.square(dimension: 10),
                        Text(
                          "Untracked",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primaryFixed
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 15),
                    Row(
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primaryFixed
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 15),
                    const CalendarWidget()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
