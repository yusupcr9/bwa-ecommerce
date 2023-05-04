import 'package:bwa_ecommerce/widgets/variations_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_list.dart';
import 'home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
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
            Image.asset(
              'assets/product_two.png',
              width: 375,
              height: 387,
            ),
            Image.asset(
              'assets/two_circle.png',
              width: 28,
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 34,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force X-AC Girl Style',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star_icon.png',
                        width: 88,
                        height: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '(16)',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp.1.650.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Rp.3.850.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Choose Variations',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VariationsTile(
                        number: '36',
                        isActive: true,
                      ),
                      VariationsTile(number: '37'),
                      VariationsTile(number: '38'),
                      VariationsTile(number: '39'),
                      VariationsTile(number: '40'),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'This shoes material is canvas press with foam \nmat, bring back your high school moment with \nthis shoes. Choose your size and just wait for it.',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Text(
                        "Related Products",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Column(
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
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BottomNavigationBar(
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
                icon: Image.asset(
                  'assets/checkout_product.png',
                  width: 34,
                  height: 32,
                ),
                label: ''),
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
      ),
    );
  }
}
