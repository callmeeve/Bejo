import 'package:bejo/components/card_horizontal.dart';
import 'package:bejo/components/card_vertical.dart';
import 'package:bejo/components/categories_tab.dart';
import 'package:bejo/data/course.dart';
import 'package:bejo/screens/course_detail_screen.dart';
import 'package:bejo/screens/course_screen.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void navigateToCourseDetails(BuildContext context, Course course) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseDetailScreen(course: course),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInRight(
                      delay: const Duration(milliseconds: 800),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Dinny Azizah,',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 900),
                      child: Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add your button's onPressed functionality here
                            },
                            icon: const Icon(
                              CarbonIcons.notification,
                            ),
                            iconSize: 22,
                            color: const Color(0xff7C83FD),
                          ),
                          Positioned(
                            top: 13,
                            right: 14,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFBC58),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1000),
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      'What do you want to learn today?',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1100),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoriesTab(
                          icon: CarbonIcons.currency,
                          title: "Accounting",
                          amount: "39 courses",
                        ),
                        CategoriesTab(
                          icon: CarbonIcons.idea,
                          title: "Soft Skill",
                          amount: "29 courses",
                        ),
                        CategoriesTab(
                          icon: CarbonIcons.paint_brush,
                          title: "Design",
                          amount: "19 courses",
                        ),
                        CategoriesTab(
                          icon: CarbonIcons.development,
                          title: "Programming",
                          amount: "9 courses",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Course',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CourseScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Show All',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff7C83FD),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 1300),
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        final course = courses[index];
                        return HorizontalCard(
                          course: course,
                          onTap: () => navigateToCourseDetails(
                            context,
                            course,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Articles',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CourseScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Show All',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff7C83FD),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1500),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        final course = courses[index];
                        return VerticalCard(
                          course: course,
                          onTap: () => navigateToCourseDetails(
                            context,
                            course,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
