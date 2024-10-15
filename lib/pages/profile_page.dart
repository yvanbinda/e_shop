import 'package:flutter/material.dart';

import '../widgets/categorytile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),backgroundColor: Color.fromRGBO(127, 130, 234, 100),
              ),
              title: Text("Hi, Sepide"),
              subtitle: Text("theflutterway@gmail.com"),
            ),
            Container(
              height: 280,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Account", style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            Column(mainAxisSize: MainAxisSize.min,
              children: [
                Categorytile(categoryTitle: "On Sale", categoryIcon: Icons.abc, items: ["All Clothing", "New In", "Coeats & Jackets", "Dresses", "Jeans"],),
                Divider(),
                Categorytile(categoryTitle: "Man's & Woman's", categoryIcon: Icons.abc, items: ["All Clothing", "New In", "Coeats & Jackets"],),
                Divider(),
                Categorytile(categoryTitle: "Kids", categoryIcon: Icons.abc, items: ["All Clothing", "New In", "Coeats & Jackets"],),
                Divider(),
                Categorytile(categoryTitle: "Accessories", categoryIcon: Icons.abc, items: ["All Clothing", "New In"],),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Personalization", style: TextStyle(fontWeight: FontWeight.w500),),
            ),
               Categorytile(categoryTitle: "Accessories", categoryIcon: Icons.abc, items: ["All Clothing", "New In"],),
            // Divider(),
            // Categorytile(),
            // Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Settings", style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            // Categorytile(),
            // Divider(),
            // Categorytile(),
            // Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Help & Support", style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            // Categorytile(),
            // Divider(),
            // Categorytile(),
            // Divider(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.logout_rounded),
              Text("Log Out"),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
