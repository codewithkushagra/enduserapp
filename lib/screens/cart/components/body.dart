import 'package:flutter/material.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Map<String, String>> demoCart = [
    {'id': 'hjasdkj', 'title': 'shampoo', 'image': 'https://newassets.apollo247.com/pub/media/catalog/product/t/r/tre0086_4_1.jpg'}
  ];

  Widget getListWidget() {
    if (demoCart.isNotEmpty) {
      return ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCart[index]['id'].toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCart.removeAt(index);
              });
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  Spacer(),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            child: CartCard(cart: demoCart[index]),
          ),
        ),
      );
    }
    return const Expanded(
      child: Center(
        child: Text(
          "Cart is Empty",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: getListWidget(),
    );
  }
}
