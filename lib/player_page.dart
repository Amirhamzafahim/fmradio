import 'package:flutter/material.dart';

import 'package:fmradio/constants.dart';
import 'package:fmradio/soft_control.dart';
import 'package:neumorphic/neumorphic.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                NeuCard(
                  // State of Neumorphic (may be convex, flat & emboss)
                  curveType: CurveType.flat,

                  // Elevation relative to parent. Main constituent of Neumorphism
                  bevel: 10,

                  // Specified decorations, like `BoxDecoration` but only limited
                  decoration: NeumorphicDecoration(
                      color: Color(0xffE5E5E5),
                      // E5E5E5
                      borderRadius: BorderRadius.circular(15)),
                  height: 170,
                  width: 250,
                  // Other arguments such as margin, padding etc. (Like `Container`)
                ),
                SizedBox(height: 32),
                Text(
                  "ROCK FM",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(255, 61, 0, 0.55)),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(255, 61, 0, 0.55)),
                ),
             ///ei jaigai clip path hbe
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      width: double.infinity,
                      height: 10,
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
                NeuCard(
                  curveType: CurveType.flat,
                  bevel: 10,
                  decoration: NeumorphicDecoration(

                      // color: Color(0xffECF0F3)
                      color: Color(0xffE5E5E5),
                      borderRadius: BorderRadius.circular(15)),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        NeuCard(
                          curveType: CurveType.emboss,
                          bevel: 9,
                          decoration: NeumorphicDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.mic_off,
                            color: Color(0xff7494B8),
                            size: 40,
                          ),
                        ),
                        NeuCard(
                          curveType: CurveType.emboss,
                          bevel: 10,
                          decoration: NeumorphicDecoration(
                              // color: Color(0xFFE0E5EC),
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.mic_off,
                            color: Color(0xff7494B8),
                            size: 40,
                          ),
                        ),
                        NeuCard(
                          curveType: CurveType.emboss,
                          bevel: 10,
                          decoration: NeumorphicDecoration(
                              // color: Color(0xFFE0E5EC),
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.mic_off,
                            color: Color(0xff7494B8),
                            size: 40,
                          ),
                        ),
                        NeuCard(
                          curveType: CurveType.emboss,
                          bevel: 10,
                          decoration: NeumorphicDecoration(
                              // color: Color(0xFFE0E5EC),
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.mic_off,
                            color: Color(0xff7494B8),
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
