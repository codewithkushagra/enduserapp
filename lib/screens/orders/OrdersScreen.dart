import 'package:flutter/material.dart';
import 'package:enduserapp/model/order_model.dart';
import 'package:enduserapp/model/cart_data.dart';
import 'package:enduserapp/screens/cart/components/body.dart';
import 'package:enduserapp/screens/checkout/checkout_screen.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int getSum(){
      int sum=0;
      for(OrderModel element in Provider.of<CartData>(context).getCartItems){
        sum=sum+int.parse(element.price!);
      }
      return sum;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'My Orders',
          style: TextStyle(
              letterSpacing: 2
          ),
        ),
        centerTitle: true,
        leading: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15,),
              // Provider.of<UserData>(context).getCartItems.isNotEmpty

              const SizedBox(height: 15,),
              const Expanded(child: Body()),
            ],
          ),
        ),
      ),
    );
  }
}
