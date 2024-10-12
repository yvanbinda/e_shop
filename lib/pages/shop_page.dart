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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Shoplon"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.notifications),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
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
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/signUp_dark.png",height: 200,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("LIPSY LONDON", style: TextStyle( fontSize: 12, color: Colors.grey),),
                                SizedBox(height: 5,),
                                Text("Mountain", style: TextStyle( fontSize: 12),),
                                Text("Warehouse for you and your familly", style: TextStyle( fontSize: 12, overflow: TextOverflow.ellipsis, ),),
                                Row(
                                  children: [
                                    Text("\$420.0", style: TextStyle( fontSize: 12, color: Colors.blue),),
                                    SizedBox(width: 5,),
                                    Text("\$540.0", style: TextStyle( fontSize: 12, color: Colors.grey, decoration: TextDecoration.lineThrough),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]
      ),
    );
  }
}
