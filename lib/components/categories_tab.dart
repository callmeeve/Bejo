import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTab extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;

  const CategoriesTab(
      {super.key,
      required this.icon,
      required this.title,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: const Color(0xff7C83FD),
                size: 32,
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff082431),
                ),
              ),
              Text(
                amount,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA2ADB1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
