import 'package:flutter/material.dart';

void main () {

Widget getApp (double height, double width, BorderRadiusGeometry borderRadius, LinearGradient gradient){
  return Container(
    decoration: BoxDecoration (color: Colors.amberAccent, borderRadius: borderRadius, gradient: gradient),
    height: height,
    width: width,
    margin: EdgeInsets.all(10),
  );
}

    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getApp(200, 100, BorderRadius.all(Radius.circular(20)),LinearGradient(begin: Alignment.bottomCenter,colors: [Colors.blueAccent, Colors.yellowAccent])),
                getApp(200, 100, BorderRadius.all(Radius.circular(20)),LinearGradient(begin: Alignment.bottomCenter,colors: [Colors.blueAccent, Colors.yellowAccent])),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 getApp(200, 100, BorderRadius.all(Radius.circular(20)),LinearGradient(begin: Alignment.bottomCenter,colors: [Colors.blueAccent, Colors.yellowAccent])),
                getApp(200, 100, BorderRadius.all(Radius.circular(20)),LinearGradient(begin: Alignment.bottomCenter,colors: [Colors.blueAccent, Colors.yellowAccent])),
              ],
            ),
          ],
        )),
    ));
}