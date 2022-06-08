import 'package:enduserapp/screens/home/components/top_store.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const DiscountBanner(),
          Categories(),
          const TopStore(),
          const SizedBox(height: 50),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
