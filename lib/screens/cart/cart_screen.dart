import 'package:enduserapp/model/user_data.dart';
import 'package:enduserapp/screens/cart/components/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
            'CART',
          style: TextStyle(
            letterSpacing: 2
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                      'Subtotal  ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    '\₹0',
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              // Provider.of<UserData>(context).getCartItems.isNotEmpty
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250.0,
                  height: 60,
                  child: ElevatedButton(

                    onPressed:(Provider.of<UserData>(context).getCartItems.isNotEmpty)?(){}:null,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 12, bottom: 12),
                      child: Text(
                        "Proceed to Buy",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              const Expanded(child: Body()),
            ],
          ),
        ),
      ),
    );
  }
}

