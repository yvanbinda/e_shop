import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final Image product_image;
  final String product_title, product_name, product_price, discount, description;

  const Products(
      {super.key,
        required this.product_image,
        required this.product_title,
        required this.product_name,
        required this.product_price,
        required this.discount,
        required this.description
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: 115,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      height: 100,
                      child: product_image,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product_title, style: TextStyle(color: Colors.grey, fontSize: 10),),
                          SizedBox(height: 5.0),
                          Text(product_name, style: TextStyle( fontSize: 11, fontWeight: FontWeight.w500),),
                          Text(description, style: TextStyle( fontSize: 11, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis,),),
                          Row(
                            children: [
                              Text(product_price, style: TextStyle( fontSize: 11, fontWeight: FontWeight.w500, color: Colors.lightBlueAccent),),
                              Text(discount, style: TextStyle( decoration:TextDecoration.lineThrough,fontSize: 11, fontWeight: FontWeight.w500, color: Colors.grey,),),
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
    );
  }
}
