import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enduserapp/database/shared_preference_db.dart';
import 'package:enduserapp/model/end_user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/user_data.dart';

class FirestoreDB{

  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  //for creating a new user
  static postDetailsToFirestore(String name) async {

    User? user = _auth.currentUser;
    UserData.endUserModel.email = user!.email;
    UserData.endUserModel.uid = user.uid;
    UserData.endUserModel.name = name;
    UserData.endUserModel.phoneNumber='';
    UserData.endUserModel.cart=[];
    UserData.endUserModel.addresses=[];
    UserData.endUserModel.orders = [];

    await firebaseFirestore
        .collection('end-users')
        .doc(user.uid)
        .set(UserData.endUserModel.toMap());
  }

  static Future<EndUserModel> getEndUser(String? uid) async{
    await firebaseFirestore
        .collection('end-users')
        .doc(uid)
        .get()
        .then((value) async {
          print(value.data());
          UserData.endUserModel=EndUserModel.fromMap(value.data());
          SharedPreferenceDB.setValue('uid',value.data()!['uid']);
          SharedPreferenceDB.setValue('email',value.data()!['email']);
          SharedPreferenceDB.setValue('name',value.data()!['name']);
          SharedPreferenceDB.setValue('phoneNumber','none');
        return EndUserModel.fromMap(value.data());
    });
    return EndUserModel();
  }

}