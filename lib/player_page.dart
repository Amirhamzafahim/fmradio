import 'package:flutter/material.dart';

import 'package:fmradio/constants.dart';
import 'package:fmradio/soft_control.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
    var icons1 = Icons.home;
  var icons2 = Icons.settings;
  var icons3 = Icons.favorite;
  var icons4 = Icons.message;

  //

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;
   void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  double radius;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    // width: MediaQuery.of(context).size.width - 30,
                    // height: MediaQuery.of(context).size.width - 50,
                    width: 250,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          // MediaQuery.of(context).size.width
                          15),
                      gradient: LinearGradient(
                        colors: [shadowColor, lightShadowColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(8, 6),
                            blurRadius: 12),
                        BoxShadow(
                            color: lightShadowColor,
                            offset: Offset(-8, -6),
                            blurRadius: 12),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Text("data")),
                ],
              ),
              SizedBox(height: 32),
              SizedBox(height: 32),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: lightShadowColor, offset: Offset(1, 4)),
                        BoxShadow(color: shadowColor, offset: Offset(-1, -4)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 2,
                    bottom: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 36),
                      width: 200,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          // gradient: LinearGradient(
                          //   colors: [seekBarLightColor,Colors.amberAccent ],
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          // ),
                          color: Colors.amberAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircularSoftButton(
                    icon: Icon(Icons.skip_previous),
                  ),
                  CircularSoftButton(
                    icon: Icon(
                      Icons.play_arrow,
                      size: 48,
                      color: seekBarDarkColor,
                    ),
                    radius: 48,
                  ),
                  CircularSoftButton(
                    icon: Icon(Icons.skip_next),
                  ),
                  
                ],
              ),
               Container(
                    // width: MediaQuery.of(context).size.width - 30,
                    // height: MediaQuery.of(context).size.width - 50,
                    width: 370,
                    height: 80,
               decoration:BoxDecoration(
                       color: Color(0xFFe6ebf2),
                       borderRadius:
                           BorderRadius.all(Radius.circular(20.0)),
                       boxShadow: [
                         BoxShadow(
                             blurRadius: 5.0,
                             offset: Offset(-3, -3),
                             color: Colors.white.withOpacity(.7)),
                         BoxShadow(
                             blurRadius: 5.0,
                             offset: Offset(3, 3),
                             color: Colors.black.withOpacity(.15))
                       ]),
                       child: Row(
                         children: <Widget>[
                         //Todo eikane add kriyen
                           
                         
                           
                         ],

                       ),
                  ),
               
                //  Container(
                //    height: 370,
                //    width: 80,
                //    decoration: BoxDecoration(
                //        color: Color(0xFFe6ebf2),
                //        borderRadius:
                //            BorderRadius.all(Radius.circular(20.0)),
                //        boxShadow: [
                //          BoxShadow(
                //              blurRadius: 5.0,
                //              offset: Offset(-3, -3),
                //              color: Colors.white.withOpacity(.7)),
                //          BoxShadow(
                //              blurRadius: 5.0,
                //              offset: Offset(3, 3),
                //              color: Colors.black.withOpacity(.15))
                //        ]),
                   
                //  )
           
            ],
          ),
        ),
      ),
    );
  }
}
