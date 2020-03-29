import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecocycling/styles.dart';
import 'package:image_picker/image_picker.dart';
import 'profile_page.dart';
import 'package:ecocycling/screens/browse_page.dart';
import 'package:ecocycling/screens/leader_page.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart'as Path;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
    await uploadimage();
  }

  Future uploadimage() async {
    StorageReference reference = FirebaseStorage.instance.ref().child(
        "photos/${Path.basename(_image.path)}");
    StorageUploadTask upload = reference.putFile(_image);
    await upload.onComplete;
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecosystem",
          style: Styles.navBarTitle,
        ),
      ),
      body: SafeArea(
          child: ListView(scrollDirection: Axis.vertical, children: [
            IconButton(
              icon: Icon(Icons.add_a_photo,size: 20.0,),
              onPressed: () {
                  getImage();
              }
            ),
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://newsroom.aaa.com/wp-content/uploads/2019/09/best-time-book-travel-holidays.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToBrowse(context),
            ),
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://newsroom.aaa.com/wp-content/uploads/2019/09/best-time-book-travel-holidays.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "LeaderBoard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToLeaderboard(context),
            ),
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://newsroom.aaa.com/wp-content/uploads/2019/09/best-time-book-travel-holidays.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToProfile(context),
            ),
          ])),
    );
  }




  void _navigateToBrowse(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Boxes(),
        ));
  }
  void _navigateToLeaderboard(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LeaderPage(),
        ));
  }

  void _navigateToProfile(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
  }



}










