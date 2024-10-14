import 'package:e_shop/pages/bookmark_page.dart';
import 'package:e_shop/pages/discover_page.dart';
import 'package:e_shop/pages/profile_page.dart';
import 'package:e_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int currentIndex = 0;
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
      body: IndexedStack(
        index: currentIndex,
          children: [
            ShopPage(),
            DiscoverPage(),
            Bookmark(),
            CartPage(),
            ProfilePage(),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: MouseCursor.defer,
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Bookmark'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ], onTap: (value) {
            setState(() {
              print(currentIndex);
              currentIndex = value!;
            });
          },
      ),
    );
  }
}
