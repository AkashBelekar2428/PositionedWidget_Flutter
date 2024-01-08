
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(PositionedWidget());
}

class PositionedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home:PositionedWidgetScreen() ,
    );
  }
}

class PositionedWidgetScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("Positioned Widget"),
   ),
   body: Container(
     width: double.infinity,
     height: double.infinity,
     color: Colors.redAccent,
     child: Stack(
       children: [
        Positioned(
          top: 10,
          left: 10,
             child: Container(
               width: 100,
               height: 100,
               color: Colors.greenAccent,
             ),
           ),
       ],
     ),
   )
 );
  }
}