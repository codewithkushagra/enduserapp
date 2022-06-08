import 'package:enduserapp/constants.dart';
import 'package:flutter/material.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';

// import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          Container(
              child: SearchField(),
            height: 50,
            // width: double.infinity,
           margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
              // decoration: BoxDecoration(
              //   color: Color(0xFF4A3298),
              //   borderRadius: BorderRadius.circular(20),
              // ),
          ),
          ),
        ],
      ),
    );
  }
}