import 'package:enduserapp/model/shop_model.dart';
import 'package:flutter/material.dart';

class ShopData extends ChangeNotifier{
  static List<ShopModel> shopList=[ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',productNameList: [],productIdList: [],rating: '3'),ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'It is a great shop',productNameList: [],productIdList: [],rating: '5'),ShopModel(shopName: 'Doon Medical Store',image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',uid: 'dksbsk',description: 'It is a great shop',productNameList: [],productIdList: [],rating: '5'),];

  List<ShopModel> get getCartItems{
    return shopList;
  }

  void addToCart(ShopModel shop){
    shopList.add(shop);
    notifyListeners();
  }

}