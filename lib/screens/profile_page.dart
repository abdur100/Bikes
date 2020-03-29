import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Image(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/image2.gif"),
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Positioned(
                top: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              width: 380,
                              height: 80,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xff689f38), Color(0xff689f38)],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'CentraleSansRegular'),
                                  ),
                                  Text(
                                    "Aditya Agrawal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontFamily: 'CentraleSansRegular'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 380,
                      height: 80,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff689f38), Color(0xff689f38)],
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "member since:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                          Text(
                            "03/29/2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                        ],

                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 380,
                      height: 115,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff689f38), Color(0xff689f38)],
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "ranking on the global leaderboard!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                          Text(
                            "125th",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: 'CentraleSansRegular'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
        )
    );

  }
}