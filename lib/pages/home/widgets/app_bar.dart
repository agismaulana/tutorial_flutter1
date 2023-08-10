import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';

AppBar appBar() => AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  centerTitle: false,
  toolbarHeight: 80,
  title: const Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "welcome",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black45,
            fontWeight: FontWeight.w400
          ),
        ),
        Text(
          "Mr. Budi Santos",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w800
          ),
        ),
      ],
    ),
  ), 
  actions: const [
    Padding(
      padding: EdgeInsets.all(Constants.kPadding),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/Ellipse1.png")
      ),
    ),
  ],
);