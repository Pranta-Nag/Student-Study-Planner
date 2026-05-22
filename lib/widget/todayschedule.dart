import 'package:flutter/material.dart';
import 'package:studentstudyplanner/widget/buildMiddleCard.dart';

class TodaySchedule extends StatelessWidget {
  const TodaySchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 199, 216, 231),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          buildMiddleCard(
            color: Colors.red,
            time: '9:00 AM',
            subject: 'Maths',
            room: '301',
          ),
          const SizedBox(height: 10),
          buildMiddleCard(
            color: Colors.black,
            time: '11:00 AM',
            subject: 'English',
            room: '304',
          ),
          const SizedBox(height: 10),
          buildMiddleCard(
            color: Colors.pink,
            time: '1:00 PM',
            subject: 'OOP',
            room: '201',
          ),
          const SizedBox(height: 10),
          buildMiddleCard(
            color: Colors.green,
            time: '3:00 PM',
            subject: 'Networking',
            room: '204',
          ),
        ],
      ),
    );
  }
}

