import 'package:e_shop/widgets/most_popular.dart';
import 'package:e_shop/widgets/products.dart';
import 'package:e_shop/widgets/category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            color: Colors.grey,
            height: 220,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Categories", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: 120,
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(child: Text("All Categories", style: TextStyle(color: Colors.white, fontSize: 12),)),
                        ),
                      ),
                      Categories(),
                      Categories(),
                      Categories(),
                      Categories(),
                    ],
                  ),
                ),

                //Popular products
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Popular products", style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Products(),
                        Products(),
                        Products(),
                        Products(),
                        Products(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 170,
          ),

          //Flash sale
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Flash sale", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 220,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: 150,
          ),

          //Best seller
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Best sellers", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 220,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                ],
              ),
            ),
          ),

          // Most popular
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Most popular", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MostPopular(),
                  MostPopular(),
                  MostPopular(),
                  MostPopular(),
                  MostPopular(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: 170,
          ),

          // Best Seller
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Best sellers", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 220,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                  Products(),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
