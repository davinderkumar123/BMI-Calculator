import 'package:flutter/material.dart';
import 'package:project/IntroPage.dart';
import 'package:project/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: Myhomepage(),
    );
  }
} class Myhomepage extends StatefulWidget{
  @override
  State<Myhomepage> createState() =>MyhomeState();
  
  

}
class MyhomeState extends State<Myhomepage>{
  var inController=TextEditingController();
  var wtController=TextEditingController();
  var ftController=TextEditingController();
  var result="";
var bgccolor=Colors.indigo.shade200;
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(" Your BMI"),
      ),
      body: 
      Container(
        color:bgccolor,
        child: Center(
        child: Container(
          
          width: 300,
          
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
        children:[ Text('BMI',style:TextStyle(fontSize: 30)),
        
        TextField(
          controller: wtController,
          decoration:InputDecoration(
          
            label: Text('enter your weight( in kg) '),
            prefixIcon: Icon(Icons.line_weight)
        
          ) ,keyboardType: TextInputType.number,

        ),
        SizedBox(height: 11,),
        TextField(
          controller: ftController,
          decoration:InputDecoration(
          
            label: Text('enter your height(in feet) '),
            prefixIcon: Icon(Icons.height)
        
          ) ,keyboardType: TextInputType.number,

        ),
        SizedBox(height: 11,),

        TextField(
          controller: inController,
          decoration:InputDecoration(
          
            label: Text('enter your height(in inch)'),
            prefixIcon: Icon(Icons.height)
        
          ) ,keyboardType: TextInputType.number,

        ),
        SizedBox(height: 11),

        ElevatedButton(onPressed: (){
          var wt=wtController.text.toString();
          var ft=ftController.text.toString();
          var inch= inController.text.toString();

        if(wt!=""&& ft!=""&& inch!=""){
          var inwt= int.parse(wt);
          var inft=int.parse(ft);
          var ininch=int.parse(inch);

          var tninch=(inft*12)+ininch;
          var tcm= tninch*2.54;
          var tM= tcm/100;
          var BMI= inwt/(tM*tM);
          var message="";

          if(BMI>=25){
            message="You're Overweight";
            bgccolor=Colors.orange.shade200;

          }else if(BMI<=18){
            message="You're underweight";
            bgccolor=Colors.red.shade200;

          }else{
            message="You're Healthy";
            bgccolor=Colors.green.shade200;

          }

          setState(() {
            result="$message \n  BMI is:  ${BMI.toStringAsFixed(4)}";
          });

        }else{
setState(() {
  result="please all fill the required blank!!";
});



        }

        }, child: Text("Calculate"),),
        Text(result,style:TextStyle(fontSize: 16),)
        ]))
        
        
              
      
      ),
      )
    );
  }
}