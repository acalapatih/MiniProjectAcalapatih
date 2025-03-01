import 'package:flutter/material.dart';

class WorkLogWidget extends StatelessWidget {
  const WorkLogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Work Log Focus",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
            ],
          ),
          const SizedBox.square(dimension: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      "564",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Remaining",
                      style: TextStyle(fontSize: 14, color: Color(0xFF989898)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 170,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: CircularProgressIndicator(
                        value: 656 / 1220,
                        strokeWidth: 8,
                        backgroundColor: Colors.blue,
                        valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "656",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Working",
                          style: TextStyle(fontSize: 14, color: Color(0xFF989898)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      "1220",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Target",
                      style: TextStyle(fontSize: 14, color: Color(0xFF989898)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox.square(dimension: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Failed",
                      style: TextStyle(
                          color: Color(0xFF757276)
                      ),
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                        ),
                        LinearProgressIndicator(
                          value: 42 / 77,
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFB8564)),
                          minHeight: 10,
                        ),
                      ],
                    ),
                    const Text("42 / 77 %")
                  ],
                ),
              ),
              const SizedBox.square(dimension: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Progress",
                      style: TextStyle(
                          color: Color(0xFF757276)
                      ),
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                        ),
                        LinearProgressIndicator(
                          value: 20 / 40,
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFBC447)),
                          minHeight: 10,
                        ),
                      ],
                    ),
                    const Text("20 / 40 %")
                  ],
                ),
              ),
              const SizedBox.square(dimension: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Success",
                      style: TextStyle(
                          color: Color(0xFF757276)
                      ),
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                        ),
                        LinearProgressIndicator(
                          value: 85 / 136,
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4AB178)),
                          minHeight: 10,
                        ),
                      ],
                    ),
                    const Text("85 / 136 %")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox.square(dimension: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).colorScheme.onPrimary
                ),
                child: Text(
                  "Worked",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),
              ),
              const SizedBox.square(dimension: 20),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).colorScheme.primary
                ),
                child: Text(
                  "Remaining",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
