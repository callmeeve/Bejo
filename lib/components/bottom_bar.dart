import 'package:bejo/screens/chat_screen.dart';
import 'package:bejo/screens/home_screen.dart';
import 'package:bejo/screens/profile_screen.dart';
import 'package:bejo/screens/course_screen.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CourseScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8.0,
            ),
            child: GNav(
              gap: 6,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              duration: const Duration(milliseconds: 500),
              tabBackgroundColor: const Color(0xff7C83FD),
              tabs: const [
                GButton(
                  icon: CarbonIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: CarbonIcons.document,
                  text: 'Course',
                ),
                GButton(
                  icon: CarbonIcons.chat,
                  text: 'Chat',
                ),
                GButton(
                  icon: CarbonIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
