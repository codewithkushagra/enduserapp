import 'package:enduserapp/screens/home/components/body.dart';
import 'package:enduserapp/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 30),
          HomeHeader(),
          SizedBox(height: 10),
          Expanded(child: BodyHome()),
        ],
      )

    );
  }
}