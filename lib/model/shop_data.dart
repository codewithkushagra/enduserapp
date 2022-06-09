import 'package:enduserapp/model/shop_model.dart';
import 'package:flutter/material.dart';

class ShopData extends ChangeNotifier{
  static List<ShopModel> shopList=[ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'It is a great shop',productNameList: [],productIdList: [],rating: '5'),ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'It is a great shop',productNameList: [],productIdList: [],rating: '5'),ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'It is a great shop',productNameList: [],productIdList: [],rating: '5'),];

  List<ShopModel> get getCartItems{
    return shopList;
  }

  void addToCart(ShopModel shop){
    shopList.add(shop);
    notifyListeners();
  }

}