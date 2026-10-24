


import 'package:flutter/material.dart';

class Catagory extends StatelessWidget{
  const Catagory({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });
  final String title;
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color, 
      ),
      child: Center(
        child: Column(
          children: [
            icon,
            Text(title)
          ],
        ),
      ),
    );
    
    
  }
}