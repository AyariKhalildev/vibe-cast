
import 'package:flutter/material.dart';

class Podcastplayscreen extends StatefulWidget{
  @override
  State<Podcastplayscreen> createState() => PodcastplayscreenState();
}
class PodcastplayscreenState extends State<Podcastplayscreen>{
  bool _isPlaying = false;
  void playPodCast(){
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: Text("podcast title here"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.heightOf(context) * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "the title here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text("channel here",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      playPodCast();
                    },
                    child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            _isPlaying ? Icons.pause : Icons.play_arrow,
                            color : Colors.white,
                            size: 50,
                            
                          ),
                        )
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                        ),
                        Text("share")
                      ],
                    )
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                           Icons.bookmark_outline,
                          color: Colors.black,
                        ),
                        Text("save")
                      ],
                    )
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                          Icons.download_outlined,
                          color: Colors.black,
                        ),
                        Text("download")
                      ],
                    )
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                          Icons.podcasts_outlined,
                          color: Colors.black,
                        ),
                        Text("playlist")
                      ],
                    )
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
    
  }
}