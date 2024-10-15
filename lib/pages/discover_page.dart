import 'package:flutter/material.dart';

import '../widgets/Textfield.dart';
import '../widgets/category.dart';
import '../widgets/categorytile.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInput(hintText: 'Find something...', prefixIcon: Icon(Icons.search),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Categories", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
                //   Categorytile(),
                //   Categorytile(),
                //   Categorytile(),
                //   Categorytile(),
                 ],
              ),
            ),
          ],
        ),
    );
  }
}
