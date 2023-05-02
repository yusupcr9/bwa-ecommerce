import 'package:bwa_ecommerce/widgets/categories_tile.dart';
import 'package:bwa_ecommerce/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 325,
                      height: 40,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 11, bottom: 11),
                            fillColor: Color(0xff2C3545),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "I'm searching for...",
                            hintStyle: GoogleFonts.montserrat(
                              color: Color(0xff68687A),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff68687A),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
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
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                          color: Color(0xff6C5ECF),
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrival \nItem up to 30%',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      side:
                                          BorderSide(color: Color(0xffF8F7FD))),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xffF8F7FD),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, right: 24),
                              child: Image.asset(
                                'assets/product_one.png',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                          color: Color(0xff21ae78),
                          borderRadius: BorderRadius.circular(17)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flash Sales \n12.12',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xffF8F7FD),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      side:
                                          BorderSide(color: Color(0xffF8F7FD))),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xffF8F7FD),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                              ),
                              child: Image.asset(
                                'assets/man_icon.png',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffCFCFCF),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesTile(
                    imageUrl: 'assets/category_one.png',
                    text: 'Stationary',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_two.png',
                    text: 'Electronic',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_three.png',
                    text: 'Houseware',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_four.png',
                    text: 'Collection',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 16),
              child: Text(
                'Something You Like',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
                bottom: 50,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/watch.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_three.png',
                        name: 'Philips LED Wi-F..',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.85.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/product_four.png',
                        name: 'Garnier Pure Act...',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.27.839',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Handphone',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.743.200',
                      ),
                      ProductList(
                        imageUrl: 'assets/product_six.png',
                        name: 'Airpods',
                        ratings: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp.5.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle:
              GoogleFonts.montserrat(color: Color(0xffF8F7FD), fontSize: 10),
          unselectedLabelStyle:
              GoogleFonts.montserrat(color: Color(0xffCFCFCF), fontSize: 10),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xffcfcfcf),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff030e22),
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                  'assets/navbar_homeon.png',
                  width: 16,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                  'assets/navbar_product.png',
                  width: 16,
                ),
              ),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                  'assets/navbar_notif.png',
                  width: 16,
                ),
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                  'assets/navbar_profile.png',
                  width: 16,
                ),
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
