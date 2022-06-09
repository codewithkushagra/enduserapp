import 'package:enduserapp/model/end_user_model.dart';
import 'package:enduserapp/model/order_model.dart';
import 'package:flutter/foundation.dart';

class CartData extends ChangeNotifier{

  static List<OrderModel> cartItems=[OrderModel(uid: 'bakbkas',product: 'Shampoo',quantity: '2',productUid: 'product1',time: '12:30',image: 'https://newassets.apollo247.com/pub/media/catalog/product/t/r/tre0086_4_1.jpg',price: '80'),OrderModel(uid: 'kjdasdka',product: 'Oil',quantity: '1',productUid: 'ka',time: '12:30',image: 'https://m.media-amazon.com/images/I/519jZs9XvmL._SY355_.jpg',price: '50'),OrderModel(uid: 'bakbkas1',product: 'Shampoo',quantity: '2',productUid: 'product1',time: '12:30',image: 'https://newassets.apollo247.com/pub/media/catalog/product/t/r/tre0086_4_1.jpg',price: '80'),OrderModel(uid: 'kjdasdka',product: 'Oil',quantity: '1',productUid: 'ka',time: '12:30',image: 'https://m.media-amazon.com/images/I/519jZs9XvmL._SY355_.jpg',price: '50'),OrderModel(uid: 'bakbkas',product: 'Shampoo',quantity: '2',productUid: 'product1',time: '12:30',image: 'https://newassets.apollo247.com/pub/media/catalog/product/t/r/tre0086_4_1.jpg',price: '80'),OrderModel(uid: 'kjdasdka',product: 'Oil',quantity: '1',productUid: 'ka',time: '12:30',image: 'https://m.media-amazon.com/images/I/519jZs9XvmL._SY355_.jpg',price: '50'),OrderModel(uid: 'bakbkas',product: 'Shampoo',quantity: '2',productUid: 'product1',time: '12:30',image: 'https://newassets.apollo247.com/pub/media/catalog/product/t/r/tre0086_4_1.jpg',price: '80'),OrderModel(uid: 'kjdasdka',product: 'Oil',quantity: '1',productUid: 'ka',time: '12:30',image: 'https://m.media-amazon.com/images/I/519jZs9XvmL._SY355_.jpg',price: '50')];

  List<OrderModel> get getCartItems{
    return cartItems;
  }

  void addToCart(OrderModel newOrder){
    cartItems.add(newOrder);
    notifyListeners();
  }

  void removeFromCart(int index){
    cartItems.removeAt(index);
    notifyListeners();
  }

}