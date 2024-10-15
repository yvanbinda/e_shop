import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          children: [
            PageView(
              children: [
                Image.asset("assets/screens/Cart_1.png",),
                Image.asset("assets/screens/Cart_2.png"),
                Image.asset("assets/screens/Cart_3.png"),
                Image.asset("assets/screens/Cart_4.png"),
                Image.asset("assets/screens/Cart_5.png"),
                Image.asset("assets/screens/Cart_6.png"),
              ],
            ),
            AlertDialog(
              title: Text("Get the full template"),
              content: Text("Thank you for using The Flutter Way shop template. You're currently using the free version. Please get the full kit to use this screen."),
              actions: [
                Row(
                  children: [

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
