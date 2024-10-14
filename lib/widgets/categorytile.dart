import 'package:flutter/material.dart';


class Categorytile extends StatelessWidget {
  const Categorytile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.all(8.0),
      title: Row(
        children: [
          Icon(Icons.access_alarms_rounded, size: 14,),
          SizedBox(width: 5,),
          Text("On Sale", style: TextStyle(fontSize: 12),),
        ],
      ),
      children: <Widget>[
        ListTile(title: Text("Item 1")),
        Divider(),
        ListTile(title: Text("Item 2")),
        Divider(),
        ListTile(title: Text("Item 3")),
      ],
    );
  }
}
