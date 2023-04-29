import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp( XylophoneApp()) ;

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [

                XyloTile(Colors.red, 1) ,
                XyloTile(Colors.orange, 2) ,
                XyloTile(Colors.yellow, 3) ,
                XyloTile(Colors.green, 4) ,
                XyloTile(Colors.blue,  5 ) ,
                XyloTile(Colors.blue.shade900, 6) ,
                XyloTile(Colors.purple, 7) ,
                XyloTile(Colors.pink, 8) ,

              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int num)
  {
    final player = AudioPlayer() ;
    setState(() {
      num = (num == 8) ? Random().nextInt(7)+1 : num ;
    });
    player.setSource(AssetSource('note$num.wav')) ;
    player.play(AssetSource('note$num.wav')) ;
  }
  Widget XyloTile( Color color, int num)
  {
    return Expanded(
      child:GestureDetector(
        child: Container(
          color: color,
          width: double.infinity,
        ),
        onTap: () async{
          playSound(num) ;
        },
      ),
    ) ;
  }
}




// TextButton(
//   style: TextButton.styleFrom(
//     backgroundColor: Colors.red ,
//     foregroundColor: Colors.white ,
//
//   ),
//   onPressed: () async{
//     final player = AudioPlayer() ;
//     await player.setSource(AssetSource('note2.wav')) ;
//     // await player.play() ;
//     // await player.play(DeviceFileSource('assets/note2.wav'));
//   },
//   child: Text('') ,
// ),


// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.red,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//     child:GestureDetector(
//       child: Container(
//         color: Colors.orange,
//         width: double.infinity,
//       ),
//       onTap: (){
//
//       },
//     ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.yellow,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.green,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.blue,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.lightBlue,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.purple,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,
//
// Expanded(
//   child:GestureDetector(
//     child: Container(
//       color: Colors.pink,
//       width: double.infinity,
//     ),
//     onTap: (){
//
//     },
//   ),
// ) ,