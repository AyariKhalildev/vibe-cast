import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:vibe_cast/screens/podcastplayscreen.dart';
class Featuredpodcastsbanner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (builder) => Podcastplayscreen()));
        },
      child: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.widthOf(context),
        height: MediaQuery.heightOf(context) * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.pinkAccent
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "episode name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text("some description here"),

              
            Container(
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
          ],
        ),
      ),
    );
  }
}