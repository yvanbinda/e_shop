import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  //final Widget category;
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(Icons.access_alarms_rounded, size: 14,),
            SizedBox(width: 5,),
            Text("On Sale", style: TextStyle(fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
