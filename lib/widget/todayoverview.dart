import 'package:flutter/material.dart';
import 'package:studentstudyplanner/widget/buildStartCard.dart';

class TodayOverviewSection extends StatelessWidget {
  const TodayOverviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 223, 223),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Today Overview",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: buildStatCard("3", "Classes Today", Icons.book)),
              const SizedBox(width: 6),
              Expanded(child: buildStatCard("5", "Assignments", Icons.assignment)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(child: buildStatCard("2", "Exams", Icons.calendar_month)),
              const SizedBox(width: 6),
              Expanded(child: buildStatCard("7", "Tasks", Icons.task)),
            ],
          ),
        ],
      ),
    );
  }
}