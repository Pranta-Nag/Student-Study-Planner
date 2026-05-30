import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String time;
  final String period;
  final String subject;
  final String room;
  final String professor;
  final String tag;
  final MaterialColor themeColor;

  const ScheduleCard({
    super.key,
    required this.time,
    required this.period,
    required this.subject,
    required this.room,
    required this.professor,
    required this.tag,
    required this.themeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: themeColor),
                ),
                Text(
                  period,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: themeColor),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 1,
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(horizontal: 12),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 4),
                Text(room, style: TextStyle(fontSize: 13, color: Colors.grey[600])),
                const SizedBox(height: 2),
                Text(professor, style: TextStyle(fontSize: 13, color: Colors.grey[600])),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: themeColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              tag,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: themeColor),
            ),
          ),
        ],
      ),
    );
  }
}