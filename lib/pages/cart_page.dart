import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                ),
                Text(
                  'Cart',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff2c3545),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/checkout_icon.png',
                        width: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Container(
                width: 344,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xff2c3545),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(children: [
                  Image.asset(
                    'assets/product_two.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nike Air Force X-AC Girl \nStyle',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7FD),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp.1.650.000',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7FD),
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Image.asset(
                            'assets/plusmin_icon.png',
                            width: 66,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 344,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xff2c3545),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(children: [
                  Image.asset(
                    'assets/watch.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Smartwatch 2.0',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7FD),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp.4.500.000',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7FD),
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120, top: 10),
                          child: Image.asset(
                            'assets/plusmin_icon.png',
                            width: 66,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030e22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text(
              'Rp.6.150.000',
              style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 153,
              height: 47,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff6C5ECF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  onPressed: () {},
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
