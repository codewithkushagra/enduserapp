import 'package:enduserapp/screens/main.dart';
import 'package:enduserapp/services/email_auth.dart';
import 'package:flutter/material.dart';
// import 'home_card.dart';
import 'package:flutter/material.dart';
import 'package:enduserapp/components/custom_bottom_nav_bar.dart';
import 'package:enduserapp/enums.dart';

import 'components/body.dart';
// import 'package:vertical_card_pager/vertical_card_pager.dart';
class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}