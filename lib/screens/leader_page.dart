import 'package:flutter/material.dart';

class LeaderPage extends StatelessWidget {
  get scaffoldKey => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Image(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/image3.gif"),
                fit: BoxFit.contain,
                width: double.infinity,
              ),
              Positioned(
                  top: 20,
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
                                        height: 540,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [Color(0xffaeea00), Color(0xff689f38)],
                                            ),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Text(
                                                "🥇 James Smith \n"
                                                    "🥈 Michael Smith \n"
                                                    "🥉 Maria Garcia \n"
                                                    " 4. David Hernadez \n"
                                                    " 5. Mary Rodriguez \n"
                                                    " 6. Michael Philips \n"
                                                    " 7. Adrian Boyles \n"
                                                    " 8. George Snith \n"
                                                    " 9. Mariano Suarz \n"
                                                    " 10. Ashok singh ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 42,
                                                    fontFamily: 'CentraleSansRegular'),
                                              )
                                            ]
                                        )
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: 380,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [Color(0xff689f38), Color(0xff689f38)],
                                            ),
                                            borderRadius: BorderRadius.circular(10)),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Text(
                                                "Your 125th on the Global Leaderboard!!",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'CentraleSansRegular'),
                                              )
                                            ]
                                        )

                                    )
                                  ]
                              )
                            ]
                        )
                      ]
                  )
              )
            ]
        )

    );
  }
}
