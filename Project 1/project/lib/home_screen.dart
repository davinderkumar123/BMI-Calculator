import 'package:flutter/material.dart';

class Intropage extends StatefulWidget{

const Intropage({Key?key}): super(key: key);
@override
 _HomeScreenState createState()=>_HomeScreenState();

}
class _HomeScreenState extends State<Intropage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Api course"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}