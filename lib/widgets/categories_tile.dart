import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTile extends StatelessWidget {
  String imageUrl;
  String text;
  CategoriesTile({required this.imageUrl, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Color(0xff2C3546),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              imageUrl,
              width: 24,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
            color: Color(0xffF8F7FD),
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
