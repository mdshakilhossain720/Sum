import 'package:flutter/material.dart';
import 'package:staete/style.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage (),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Homepageui();
  }

}
class Homepageui extends State<HomePage>{

  Map<String, String>FormValue={"Num 1":"","Num2":"","Num3":""};
 double sum=0;

  @override
  Widget build(BuildContext context) {
    Myonchange(Inputkey,Inputvalue){

      setState(() {
        FormValue.update(Inputkey, (value) => (Inputvalue),);
      });
    }


    Addallnumber(){
      setState((){
        sum = (FormValue['Num1']!+FormValue['Num2']!+FormValue['Num3']!) as double;

      });

    }

     return Scaffold(
       appBar: AppBar(title: Text("Add"),),
       body: Padding(
         padding: EdgeInsets.all(50),
         child: Column(
           children: [
             Text(sum.toString(),style: HeadTextStyle(),),
             TextField(onChanged: (value){
               Myonchange(value,"Num1");
             },  decoration: Appinputstyle("Frist Number"),),
             SizedBox(height: 25,),
             TextField(onChanged: (value){
               Myonchange(value,"Num2");
             }, decoration: Appinputstyle(" Second Number"),),
             SizedBox(height: 25,),
             TextField(onChanged: (value){
               Myonchange(value,"Num3");
             },decoration: Appinputstyle(" Thrid Number"),),
             SizedBox(height: 25,),
             Container(
               width: double.infinity,

               child: ElevatedButton(
               style: Appbuttonstyle(),
               child: Text("Add"),
               onPressed: (){
                 Addallnumber();
               },
             ),)
           ],
         ),
       ),

     );
  }

}










/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage(),
    title: "counter app");
  }
}
class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return Homepageui();
  }

}




class Homepageui extends  State<Homepage>{

  int CountNumber =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(CountNumber.toString(),),
       ),
      body: Center(
        child: Text("Number counting "),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState((){
            CountNumber = CountNumber+1;

          });




        },
      ),


    );
  }

}*/


