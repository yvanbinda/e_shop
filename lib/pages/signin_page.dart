import 'package:e_shop/pages/signup_page.dart';
import 'package:flutter/material.dart';

import '../widgets/Textfield.dart';

class SinginPage extends StatelessWidget {
  const SinginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/login_dark.png"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                Text("Login in with your data that you entered during your registration.", style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          TextInput(hintText: 'Email address', prefixIcon: Icon(Icons.mail),),
          TextInput(hintText: 'Password ', prefixIcon: Icon(Icons.lock),),
          Text("Forgot password", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w500),),
          SizedBox(height: 100,),
          Column(
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
                    Text("Log in", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                      },
                        child: Text("Sign up", style: TextStyle(color: Colors.deepPurple),
                        )
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
