import 'package:flutter/material.dart';
import 'package:enduserapp/screens/main.dart';
import 'package:enduserapp/services/email_auth.dart';
import 'package:enduserapp/screens/profile/edit_addresses.dart';
import 'package:enduserapp/screens/profile/edit_profile.dart';
import 'package:enduserapp/screens/profile/delete_account.dart';
import 'package:enduserapp/screens/profile/menu_item.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Edit Profile",
              press: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const EditProfile()),
                ),
              },
            ),
            ProfileMenu(
              text: "Edit Addresses",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditAddresses()),
                );
              },
            ),
            ProfileMenu(
              text: "Delete Account",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeleteAccount()),
                );
              },
            ),
            ProfileMenu(
              text: "Contact us",
              press: () {
                _callNumber();
              },
            ),
            ProfileMenu(
              text: "Log Out",
              press: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Sign Out'),
                    content: const Text('Do you want to Sign Out?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          EmailAuth.signOut();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()),
                          );
                        },
                        child: const Text('Sign out'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


_callNumber() async {
  String number = "+91123456789";
  await FlutterPhoneDirectCaller.callNumber(number);
}





