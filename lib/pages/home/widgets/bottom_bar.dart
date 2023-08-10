
import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';

Widget bottomBar() => BottomAppBar(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: Constants.kPadding,
        ),
        child: IconButton(
          onPressed: () {
            debugPrint("home");
          }, 
          icon: const Icon(Icons.home)
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: Constants.kPadding,
        ),
        child: IconButton(
          onPressed: () {
            debugPrint("Chat");
          }, 
          icon: const Icon(Icons.chat)
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal:Constants.kPadding,
        ),
        child: IconButton(
          onPressed: () {
            debugPrint("Analytics");
          }, 
          icon: const Icon(Icons.analytics)
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal:Constants.kPadding,
        ),
        child: IconButton(
          onPressed: () {
            debugPrint("Person");
          }, 
          icon: const Icon(Icons.person)
        ),
      ),
    ],
  ),
);