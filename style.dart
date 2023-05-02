
import 'package:flutter/material.dart';

InputDecoration  Appinputstyle(label){

  return InputDecoration(

    contentPadding: EdgeInsets.all(20),
      fillColor: Colors.blue,
    border: OutlineInputBorder(),
    labelText: label
  );

}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w600
  );
}
ButtonStyle Appbuttonstyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    )
  );
}
