import 'package:e_shop/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SinginPage()));
          }, child: Text("Skip", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))),
           SizedBox(width: 30,),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 500,
            child: IndexedStack(
              index: currentIndex,
              alignment: Alignment.center,
              children: [
                Image.asset("assets/Illustration/Illustration-0.png"),
                Image.asset("assets/Illustration/Illustration-1.png"),
                Image.asset("assets/Illustration/Illustration-2.png"),
                Image.asset("assets/Illustration/Illustration-3.png"),
                Image.asset("assets/Illustration/Illustration-4.png"),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentIndex == 0? currentIndex == 2?"Find the item you've \n   been looking for"
                  : ( "Get those shopping \n        bags filled"),
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text(currentIndex == 1?"Here you'll see rich varieties of goods, carefully \n classified for seamless browsing experience."
                  :"Add any item you want to your cart, or save it on your \nwishlist, so you don't ,is it in your future purchases.",style: TextStyle(color: Colors.grey,),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        backgroundColor: Colors.deepPurpleAccent,

        onPressed: () {
        print("pressed");
        setState(() {
          currentIndex = (currentIndex + 1);
          if (currentIndex == 4) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SinginPage(),));
          }
        });
      },child: SvgPicture.asset("assets/icons/Arrow - Right.svg", color: Colors.white,),
      ),
    );
  }
}
