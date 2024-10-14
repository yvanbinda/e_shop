import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                child: Stack(
                  children: [
                    Image.asset("assets/images/signUp_dark.png",height: 100, width: 200,),
                    //Discount Label
                    Positioned(
                      left: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric( horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("20% off", style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LIPSY LONDON", style: TextStyle( fontSize: 12, color: Colors.grey),),
                  SizedBox(height: 5,),
                  Text("Mountain", style: TextStyle( fontSize: 12),),
                  Text("Warehouse for",overflow:TextOverflow.ellipsis,style: TextStyle( fontSize: 12,),),
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
