import 'package:bejo/data/course.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalCard extends StatelessWidget {
  final Course course;
  final Function onTap;

  const VerticalCard({super.key, required this.course, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onTap(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      width: 150,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BEJO",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: const Color(0xff7C83FD),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  course.name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xff082431),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  course.category,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: const Color(0xffA2ADB1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          // const SizedBox(
                          //   width: 12.0,
                          // ),
                          // const Icon(
                          //   Icons.favorite_outline,
                          //   color: Color(0xffA2ADB1),
                          //   size: 26.0,
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
