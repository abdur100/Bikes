

import 'dart:io';

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
          Boxes()
        ],
      ),

    ),
  ));

}



class Boxes extends StatelessWidget{






















 /* File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }*/








  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network('https://www.kauai.com/images/kauai-recycling.png',
                          height: 100,
                          fit: BoxFit.fill
                      ),
                    ),
                    ListTile(
                        title: Text('COVID-19')
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );



  }






}