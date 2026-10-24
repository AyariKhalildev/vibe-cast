import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Podcast extends StatelessWidget{
  const Podcast({
    super.key,
    required this.title,
    required this.channel,
  });
  final String title;
  final String channel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("listining to the podcast");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.lightBlue,
            ),
            width : 70,
            height: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),),
              Text(channel)
            ],
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color : Colors.white,
            ),
          )
        ],
      ),
    );
    
  }
}