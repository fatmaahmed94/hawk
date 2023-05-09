

// // ignore_for_file: unnecessary_import, implementation_imports, prefer_typing_uninitialized_variables

// import 'dart:ffi';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key, required VideoPlayerController controller});

//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }

// class _VideoPlayerState extends State<VideoPlayer> {
//   final Textcontroler=TextEditingController(text: )
//    late VideoPlayerController controller;
//   @override
//   Void initState(){
//     super.initState();
//     var textcontroller;
//     controller=     VideoPlayerController.network(textcontroller.text)
//     ..addListener(() =>setState(() {}))
//     ..setLooping(true)
//     ..initialize().then((_) => controller.play());


//   }
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
  
//   @override
//   Widget build(BuildContext context) => Container(
//     alignment: Alignment.center,
//     child: Column(children: [
//       VideoPlayer(controller:controller),
//       buildTextField(),


//     ],),



//   )
  




//   @override
//   Widget build(BuildContext context) {
//     return  ();
//   }
// }

// buildTextField() {
// }


// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer(VideoPlayerController controller);

  @override
_VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://www.youtube.com/watch?v=F6sLcESv-yg');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
             } else {
            return Center(
              child: CircularProgressIndicator(backgroundColor: Colors.blue,
              ),
            );
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(_controller.value.isPlaying){
              _controller.pause();
            }else{
              _controller.play();
            }
          });
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      ),
    ),
    );
  }
}