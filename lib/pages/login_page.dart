import 'package:bwa_ecommerce/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 134.0,
          left: 40,
          right: 40,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/icon_logo.png',
                width: 80,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Let's Sign You In.",
              style: GoogleFonts.montserrat(
                color: Color(0xffF8F7FD),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                cursorColor: Colors.white,
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 11),
                    fillColor: Color(0xff2C3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.montserrat(
                      color: Color(0xff68687A),
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                obscureText: true,
                cursorColor: Colors.white,
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 11),
                    fillColor: Color(0xff2C3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                      color: Color(0xff68687A),
                    )),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/mini_rectangle.png',
                  width: 29,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Remember me',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 67,
                ),
                Text(
                  'Forgot Password?',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Container(
              width: 295,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6c5ecf),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7Fd),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff6c5ECF),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
