import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  const Products(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 130,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/signUp_dark.png",height: 100, width: 200,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LIPSY LONDON", style: TextStyle( fontSize: 12, color: Colors.grey),),
                  SizedBox(height: 5,),
                  Text("Mountain", style: TextStyle( fontSize: 12),),
                  Text("Warehouse for you and your familly", style: TextStyle( fontSize: 12, overflow: TextOverflow.ellipsis),),
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
    );
  }
}
