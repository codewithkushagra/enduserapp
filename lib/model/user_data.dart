import 'package:enduserapp/model/end_user_model.dart';
import 'package:enduserapp/model/order_model.dart';
import 'package:flutter/foundation.dart';

class UserData extends ChangeNotifier{
  static EndUserModel endUserModel = EndUserModel();
  static List<OrderModel> cartItems=[];

  List<OrderModel> get getCartItems{
    return cartItems;
  }

  void addToCurrentUserModel(OrderModel newOrder){
    cartItems.add(newOrder);
    notifyListeners();
  }

}