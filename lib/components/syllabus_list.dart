import 'package:animate_do/animate_do.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SyllabusList extends StatelessWidget {
  const SyllabusList({Key? key}) : super(key: key);

  Widget item(
    final String title,
    final Duration duration,
  ) {
    return FadeInUp(
      delay: duration,
      child: ClipRRect(
        child: Container(
          width: 500,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xff7C83FD),
              width: 1.2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xff7C83FD),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  CarbonIcons.document_download,
                  size: 20,
                  color: Color(0xff7C83FD),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: FadeInUp(
            delay: const Duration(milliseconds: 1000),
            child: Text(
              "Course title",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              item(
                'Part 1',
                const Duration(milliseconds: 1100),
              ),
              item(
                'Part 2',
                const Duration(milliseconds: 1200),
              ),
              item(
                'Part 3',
                const Duration(milliseconds: 1300),
              ),
              item(
                'Part 4',
                const Duration(milliseconds: 1300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
