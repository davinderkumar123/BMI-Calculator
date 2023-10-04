import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(
      title: Text('demo project'),
   ),
  
    
    body:Center(child:Column(
      children: [

     Container(
      height: 200,
      width: 200,
      color:Colors.yellow,
      ),

     Container(
      height: 100,
      width: 100,
      color:Colors.brown,),
      Divider(
        height: 20,
        thickness: 5,
        indent: 6,
        endIndent: 8,
      ),

      Container(
      height: 50,
      width: 50,
      color:Colors.purple,),
    
       Container(
      height: 30,
      width: 30,
      color:Colors.red,
    
      ) ])),
       
      ) ,

    ),);
}