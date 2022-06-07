import 'package:enduserapp/database/shared_preference_db.dart';
import 'package:enduserapp/screens/bottom_navigator.dart';
import 'package:enduserapp/screens/loading_screens/loading.dart';
import 'package:enduserapp/screens/main.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: SharedPreferenceDB.getValue('name'),
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.data==null) {
          return const MainScreen();
        } else if (snapshot.hasData) {
          return const BottomNavigator();
        } else if (snapshot.hasError) {
          return Text(snapshot.data.toString());
        } else {
          return const Loader();
        }
      },
    );
  }
}
