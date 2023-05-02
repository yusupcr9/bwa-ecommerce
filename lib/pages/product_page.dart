import 'package:bwa_ecommerce/pages/cart_page.dart';
import 'package:bwa_ecommerce/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/categories_tile.dart';
import '../widgets/product_list.dart';
import 'home_page.dart';

class ProductPage extends StatelessWidget {
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
                            prefixIcon: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            SearchPage(),
                                    transitionDuration: Duration(seconds: 0),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.search,
                                color: Color(0xff68687A),
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              CartPage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Container(
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
                  )
                ],
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
          currentIndex: 1,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: InkWell(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Image.asset(
                    'assets/navbar_home.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                  'assets/navbar_producton.png',
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
