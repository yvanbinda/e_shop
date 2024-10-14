import 'package:e_shop/pages/shop.dart';
import 'package:e_shop/pages/signin_page.dart';
import 'package:flutter/material.dart';

import '../widgets/Textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/signUp_dark.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Let's get started!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                Text("Please enter your valid data in order to create an account.", style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          TextInput(hintText: 'Email address', prefixIcon: Icon(Icons.mail),),
          TextInput(hintText: 'Password ', prefixIcon: Icon(Icons.lock),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "I agree with the ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                    TextSpan(text: "Terms of service ",style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w500),),
                    TextSpan(text: "& privacy \npolicy. ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                  ]
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Shop(),));
                            },
                              child: Text("Continue", style: TextStyle(color: Colors.white),)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account?"),
                      SizedBox(width: 10,),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SinginPage(),));
                          },
                          child: Text("Log in", style: TextStyle(color: Colors.deepPurple),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
