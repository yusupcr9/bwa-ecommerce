import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VariationsTile extends StatelessWidget {
  String number;
  bool isActive = false;
  VariationsTile({required this.number, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      decoration: BoxDecoration(
        color: Color(0xff2C3545),
        border: isActive
            ? Border(
                left: BorderSide(
                  color: Color(0xff6C5ECF),
                ),
                right: BorderSide(
                  color: Color(0xff6C5ECF),
                ),
                top: BorderSide(
                  color: Color(0xff6C5ECF),
                ),
                bottom: BorderSide(
                  color: Color(0xff6C5ECF),
                ),
              )
            : Border(),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
