import 'package:bejo/data/course.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalCard extends StatelessWidget {
  final Course course;
  final Function onTap;

  const HorizontalCard({super.key, required this.course, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15.0,
          top: 15.0,
        ),
        child: SizedBox(
          width: 180,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                child: Image.asset(
                  course.imageUrl,
                  width: 180,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BEJO',
                      style: GoogleFonts.poppins(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff7C83FD),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      course.name,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff082431),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Color(0xffFFBC58),
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFBC58),
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFBC58),
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFBC58),
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFBC58),
                              size: 12.0,
                            ),
                          ],
                        ),
                        Text(
                          '(4016)',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: const Color(0xffA2ADB1),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
