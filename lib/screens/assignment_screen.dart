import 'package:flutter/material.dart';
import 'package:studentstudyplanner/screens/home_screen.dart';
import 'package:studentstudyplanner/widget/assignment_card.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: const Text(
          'Assignments',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade400,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AssignmentCard(
            icon: Icons.people_outline,
            iconColor: Colors.deepPurple,
            bgColor: Color(0xFFF1ECFF),
            subject: "Data Structures",
            title: "Implement Linked List",
            dueDate: "22 May, 2024",
            daysLeft: "2 Days Left",
            badgeColor: Colors.red,
          ),
          AssignmentCard(
            icon: Icons.description_outlined,
            iconColor: Colors.green,
            bgColor: Color(0xFFE7F7EF),
            subject: "Database Systems",
            title: "Mini Project Report",
            dueDate: "25 May, 2024",
            daysLeft: "5 Days Left",
            badgeColor: Colors.orange,
          ),
          AssignmentCard(
            icon: Icons.description_outlined,
            iconColor: Colors.amber,
            bgColor: Color(0xFFFFF5DC),
            subject: "Operating Systems",
            title: "Case Study",
            dueDate: "28 May, 2024",
            daysLeft: "8 Days Left",
            badgeColor: Colors.green,
          ),
          AssignmentCard(
            icon: Icons.edit_outlined,
            iconColor: Colors.pink,
            bgColor: Color(0xFFFFEEF4),
            subject: "Computer Networks",
            title: "Lab Assignment",
            dueDate: "30 May, 2024",
            daysLeft: "10 Days Left",
            badgeColor: Colors.blue,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 2,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.purple,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
