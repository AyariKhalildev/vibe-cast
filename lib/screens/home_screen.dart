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
              SizedBox(
                height: 8,
              ),
               Row (
                  children: [
                      Catagory(title: "Business",icon: Image.asset("assets/icons/growth.png",
                      width: 35,
                      height: 35,
                      ),
                      color: Colors.lightBlue,),
                    
                    SizedBox(
                      width: 8,
                    ),
                    Catagory(title: "health",icon: Image.asset("assets/icons/health.png",
                    width: 35,
                    height: 35,
                    ),
                    color: Colors.lightBlue,),
                    SizedBox(
                      width: 8,
                    ),
                    Catagory(title: "science",icon: Image.asset("assets/icons/science.png",
                    width: 35,
                    height: 35,
                    ),
                    color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Catagory(title: "history",icon: Image.asset("assets/icons/history.png",
                    width: 35,
                    height: 35,
                    ),
                    color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                   /* Catagory(title: "crimes",icon: Image.asset("assets/icons/crime.png",
                    width: 35,
                    height: 35,
                    ),
                    color: Colors.lightBlue,
                    ),*/
                    
                  ]
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
              SizedBox(
                height: 12,
              ),
             Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                      children: [
                        Podcast(title: "test", channel: "test"),
                        Podcast(title: "test", channel: "test"),
                        Podcast(title: "test", channel: "test"),
                        Podcast(title: "test", channel: "test"),
                      ],
                    ),
              ),
            ] 
            ),
              
            )
          ),
      );
    
  }
}