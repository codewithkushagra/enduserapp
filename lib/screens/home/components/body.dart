import 'package:flutter/material.dart';

// import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            HomeHeader(),
            SizedBox(height: 10),
            DiscountBanner(),
            // Categories(),
            SpecialOffers(),
            SizedBox(height: 50),
            // PopularProducts(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}