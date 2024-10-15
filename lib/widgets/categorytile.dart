import 'package:flutter/material.dart';


class Categorytile extends StatelessWidget {
  final List<String> items;
  final String categoryTitle;
  final IconData categoryIcon;
  const Categorytile({super.key, required this.items, required this.categoryTitle, required this.categoryIcon});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.all(8.0),
      title: Row(
        children: [
          Icon(categoryIcon, size: 14,),
          SizedBox(width: 5,),
          Text(categoryTitle, style: TextStyle(fontSize: 12),),
        ],
      ),
      children: <Widget>[
        ...items.map((item) => Column(
          children: [
            ListTile(title: Text(item)),
            if (items.indexOf(item) != items.length - 1) Divider(),
          ],
        )).toList(),
      ],
    );
  }
}
