import 'package:flutter/material.dart';
import 'package:studentstudyplanner/screens/home_screen.dart';
import 'package:studentstudyplanner/widget/schedule_card.dart';

class ClassScheduleScreen extends StatefulWidget {
  const ClassScheduleScreen({super.key});

  @override
  State<ClassScheduleScreen> createState() => _ClassScheduleScreenState();
}

class _ClassScheduleScreenState extends State<ClassScheduleScreen> {
  int selectedDayIndex = 0;

  final List<Map<String, String>> weeklyDays = [
    {"day": "Mon", "date": "20"},
    {"day": "Tue", "date": "21"},
    {"day": "Wed", "date": "22"},
    {"day": "Thu", "date": "23"},
    {"day": "Fri", "date": "24"},
    {"day": "Sat", "date": "25"},
    {"day": "Sun", "date": "26"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: const Text(
          'Class Schedule',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade400,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_view_week),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          _datePicker(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ScheduleCard(
                  time: "9:00",
                  period: "AM",
                  subject: "Mathematics",
                  room: "Room 301",
                  professor: "Prof. Sharma",
                  tag: "Lecture",
                  themeColor: Colors.deepPurple,
                ),
                SizedBox(height: 12),
                ScheduleCard(
                  time: "11:00",
                  period: "AM",
                  subject: "Data Structures",
                  room: "Room 205",
                  professor: "Prof. Verma",
                  tag: "Lecture",
                  themeColor: Colors.teal,
                ),
                SizedBox(height: 12),
                ScheduleCard(
                  time: "2:00",
                  period: "PM",
                  subject: "Database Systems",
                  room: "Room 102",
                  professor: "Prof. Iyer",
                  tag: "Lecture",
                  themeColor: Colors.orange,
                ),
                SizedBox(height: 12),
                ScheduleCard(
                  time: "4:00",
                  period: "PM",
                  subject: "Operating Systems",
                  room: "Room 409",
                  professor: "Prof. Khan",
                  tag: "Lecture",
                  themeColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget _datePicker() {
    return Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(weeklyDays.length, (index) {
              final isSelected = index == selectedDayIndex;
              final dayData = weeklyDays[index];

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDayIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFF635BFF) : Colors.transparent, 
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        dayData["day"]!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: isSelected ? Colors.white : Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        dayData["date"]!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
  }
}

