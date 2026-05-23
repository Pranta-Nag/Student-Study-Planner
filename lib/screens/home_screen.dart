import 'package:flutter/material.dart';
import 'package:studentstudyplanner/screens/assignment_screen.dart';
import 'package:studentstudyplanner/screens/class_schedule_screen.dart';
import 'package:studentstudyplanner/screens/profile_screen.dart';
import 'package:studentstudyplanner/screens/home_dashboard_view.dart'; // Import your new sub-view

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  // The screens match the order of your BottomNavigationBar items perfectly
  final List<Widget> screens = [
    const HomeDashboardView(), 
    const ClassScheduleScreen(),
    const AssignmentScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar is gone from here! It is now managed by each individual screen below.
      body: screens[currentIndex],
      
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
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 219, 226, 232),
        selectedItemColor: const Color.fromARGB(255, 253, 1, 1),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment), 
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}