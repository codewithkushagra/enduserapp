import 'package:enduserapp/model/shop_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'section_title.dart';

class TopStore extends StatelessWidget {
  const TopStore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getListViewWidget() {
      if (Provider.of<ShopData>(context).getCartItems.isNotEmpty) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: Provider.of<ShopData>(context).getCartItems.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(
                Provider.of<ShopData>(context)
                    .getCartItems[index]
                    .uid
                    .toString(),
              ),
              child: TopStoreCard(
                image:
                    Provider.of<ShopData>(context).getCartItems[index].image!,
                shopName: Provider.of<ShopData>(context)
                    .getCartItems[index]
                    .shopName!,
                shopRating: int.parse(
                    Provider.of<ShopData>(context).getCartItems[index].rating!),
                press: () {},
              ),
            ),
          ),
        );
      }
      return const Center(
        child: Text(
          "No Shops Available",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black54,
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SectionTitle(
              title: "Top stores",
              press: () {},
            ),
          ),
          const SizedBox(height: 20),
          getListViewWidget(),
        ],
      ),
    );
  }
}

class TopStoreCard extends StatelessWidget {
  const TopStoreCard({
    Key? key,
    required this.shopName,
    required this.image,
    required this.shopRating,
    required this.press,
  }) : super(key: key);

  final String shopName, image;
  final int shopRating;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 300,
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 55,
                        child: Container(
                          color: Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Text.rich(
                              TextSpan(
                                style: const TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: "$shopName\n",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "$shopRating Brands")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
