import 'package:flutter/material.dart';
import 'package:vibe_cast/screens/UIcomponents/featuredPodcastsBanner.dart';
import 'package:vibe_cast/screens/UIcomponents/podcast.dart';
import 'package:vibe_cast/services/user_services.dart';
import 'UIcomponents/catagory.dart';
class HomeScreen  extends StatefulWidget{
  @override
  State<HomeScreen> createState() => HomeScreenState();
}
class HomeScreenState extends State<HomeScreen>{
  var _podCasts;
  Future<void> loadData() async { 
    
    
  }
  @override
  void initState() {
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "discover great\npodcasts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26

                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Podcasts",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),
                  ),

                ],
              ),
              Featuredpodcastsbanner(),
              SizedBox(
                height: 8,
              ),
              Text(
                    "Catagories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
              )
              ),
              Row(
                children: [
                  Catagory(title: "Crimes",icon: Icon(
                    Icons.developer_board,
                  
                  ),
                  color: Colors.lightBlue,)
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                    "Trending now",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
              )
              ),
              
            ],
          ),
        )
      ),
    );
  }
}