import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Jan",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Feb",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Mar",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Apr",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "May",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Jun",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Jul",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Aug",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Sep",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Oct",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Nov",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
            Text(
              "Dec",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primaryFixed
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        CalendarGrid(),
      ],
    );
  }
}

class CalendarGrid extends StatelessWidget {
  final int rows = 7;
  final int cols = 24;

  final List<List<bool>> data = List.generate(24, (colIndex) =>
      List.generate(7, (rowIndex) => colIndex >= 16 && colIndex <= 18)
  );

  CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(cols, (colIndex) {
        return Column(
          children: List.generate(rows, (rowIndex) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: data[colIndex][rowIndex] ? const Color(0xFF6793EF) : Theme.of(context).colorScheme.secondary,
              ),
            );
          }),
        );
      }),
    );
  }
}