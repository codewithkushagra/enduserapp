import 'package:flutter/material.dart';
import 'package:enduserapp/screens/profile/profile_pic1.dart';
import 'dart:io';
class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.blueAccent,
            height: 2.0,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [

              const ProfilePic1(),
              const SizedBox(
                height: 50,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  IconButton(onPressed: () {},
                      icon: const Icon(Icons.add_photo_alternate ,
                        color: Colors.blueAccent,
                        size: 36.0,),
                      padding: const EdgeInsets.symmetric(horizontal: 50)),
                  IconButton(onPressed: () {},
                      icon: const Icon(Icons.camera_alt,
                        color: Colors.blueAccent,
                        size: 36.0,),
                      padding: const EdgeInsets.symmetric(horizontal: 50)),

                ],
              ),
              const SizedBox(
                height:350,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      //elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),),
                    child: const Text(
                      "SAVE",
                      style:  TextStyle(
                          fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                    ),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
