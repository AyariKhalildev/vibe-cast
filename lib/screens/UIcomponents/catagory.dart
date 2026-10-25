


import 'package:flutter/material.dart';
import 'package:vibe_cast/screens/podcastplayscreen.dart';

class Catagory extends StatelessWidget{
  const Catagory({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });
  final String title;
  final Image icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (builder) => Podcastplayscreen()));
      },
      child: SizedBox(
        height: 80,
        width: 80,
        child: Card(
          color: color,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon,
                Text(title)
              ],
            ),
          ),
      ),
      );
    
    
    
  }
}