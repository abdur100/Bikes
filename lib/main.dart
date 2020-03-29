import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main(){
  BuildContext context;



  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text('Recent Ratings',style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
          textAlign: TextAlign.left,
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(null),
        ),
      ),

      body: Column(
         children: <Widget>[

         ],
      ),

    ),
  ));
}




