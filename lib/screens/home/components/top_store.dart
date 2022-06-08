import 'package:flutter/material.dart';

// import '../../../size_config.dart';
import 'section_title.dart';

class TopStore extends StatelessWidget {
  const TopStore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20),
            child: SectionTitle(
              title: "Top stores",
              press: () {},
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              TopStoreCard(
                image: 'https://www.rishikeshcity.com/wp-content/uploads/2019/07/doon-medical-store-dehradun-j76mi-1.jpg',
                category: "Doon Medical Store",
                numOfBrands: 18,
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopStoreCard extends StatelessWidget {
  const TopStoreCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
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
                                    text: "$category\n",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "$numOfBrands Brands")
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