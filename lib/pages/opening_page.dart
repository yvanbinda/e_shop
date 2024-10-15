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
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginPage()));
            },
            child: Text(
              "Skip",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(width: 30,),
        ],
      ),
      body: Column(
        children: [
          // PageView for images
          Container(
            height: 400,
            width: double.infinity,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                Image.asset("assets/Illustration/Illustration-0.png"),
                Image.asset("assets/Illustration/Illustration-1.png"),
                Image.asset("assets/Illustration/Illustration-2.png"),
                Image.asset("assets/Illustration/Illustration-3.png"),
                Image.asset("assets/Illustration/Illustration-4.png"),
              ],
            ),
          ),

          // Text for each page
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentIndex == 0 ? "Find the item you've \n   been looking for"
                    : (currentIndex == 1 ? "Get those shopping \n        bags filled"
                    : (currentIndex == 2 ? "Find the item you've \n   been looking for"
                    : (currentIndex == 3 ? "Package tracking"
                    : "Find the item you've \n   been looking for"))),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                currentIndex == 0 ? "Here you'll see rich varieties of goods, carefully \n classified for seamless browsing experience."
                    : (currentIndex == 1 ? "Add any item you want to your cart, or save it on your \nwishlist, so you don't miss it in your future purchases."
                    : (currentIndex == 2 ? "Here you'll see rich varieties of goods, carefully \n classified for seamless browsing experience."
                    : (currentIndex == 3 ? "In particular, Shoplon can pack your orders, and help \n you seamlessly manage your shipments."
                    : "Add any item you want to your cart, or save it on your \nwishlist, so you don't miss it in your future purchases."))),
                style: TextStyle(color: Colors.grey,),
              ),
            ],
          ),

          // Dots Indicator
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  width: currentIndex == index ? 5 : 5,
                  height: currentIndex == index ? 16 : 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: currentIndex == index ? Colors.deepPurpleAccent : Color.fromRGBO(127, 130, 234, 100),
                    shape: BoxShape.rectangle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),

      // Floating Action Button for next step
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          setState(() {
            if (currentIndex < 4) {
              currentIndex++;
              _pageController.animateToPage(currentIndex, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginPage()));
            }
          });
        },
        child: SvgPicture.asset("assets/icons/Arrow - Right.svg", color: Colors.white,),
      ),
    );
  }
}
