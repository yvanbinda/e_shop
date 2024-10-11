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
            height: 200,
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: double.infinity, // Adjust as needed
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("  All Categories  ", style: TextStyle(fontSize: 12, color: Colors.white),),
                    ),
                  ),
                ),
                Categories(category: Row(
                  children: [
                    Icon(Icons.sd_card_alert, size: 12,),
                    Text("  On Sale  ", style: TextStyle(fontSize: 12,)),
                  ],
                ),
                ),Categories(category: Row(
                  children: [
                    Icon(Icons.sd_card_alert, size: 12,),
                    Text("  Man's  ", style: TextStyle(fontSize: 12,)),
                  ],
                ),
                ),Categories(category: Row(
                  children: [
                    Icon(Icons.sd_card_alert, size: 12,),
                    Text("  Woman's  ", style: TextStyle(fontSize: 12,)),
                  ],
                ),
                ),Categories(category: Row(
                  children: [
                    Icon(Icons.sd_card_alert, size: 12,),
                    Text("  Kids  ", style: TextStyle(fontSize: 12,)),
                  ],
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Popular products"),
          ),
          Container(
            height: 230,
            child: ListView(
              children: [
                Products(
                  description: "Ware house for you",
                  discount: "\$420.0",
                  product_image: Image.asset(""),
                  product_name: "Mountain",
                  product_price: "540.0",
                  product_title: "LIPSY LONDON",
                ),Products(
                  description: "Ware house for you",
                  discount: "\$420.0",
                  product_image: Image.asset(""),
                  product_name: "Mountain",
                  product_price: "540.0",
                  product_title: "LIPSY LONDON",
                ),Products(
                  description: "Ware house for you",
                  discount: "\$420.0",
                  product_image: Image.asset(""),
                  product_name: "Mountain",
                  product_price: "540.0",
                  product_title: "LIPSY LONDON",
                ),Products(
                  description: "Ware house for you",
                  discount: "\$420.0",
                  product_image: Image.asset(""),
                  product_name: "Mountain",
                  product_price: "540.0",
                  product_title: "LIPSY LONDON",
                ),
              ],
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
