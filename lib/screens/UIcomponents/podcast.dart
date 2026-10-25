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
      child: ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        title: Text("the title here $title",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          
        ),
        ),
        subtitle: Text("the subtitle here $channel"),
        trailing: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color : Colors.black,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
      ),
    );
    
  }
}