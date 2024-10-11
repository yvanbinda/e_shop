import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final Widget category;
  const Categories({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity, // Adjust as needed
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: category,
        ),
      ),
    );
  }
}
