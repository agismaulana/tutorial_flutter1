import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';

Widget searchBar() => Padding(
  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: Constants.kPadding),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Search for anything",
      fillColor: Colors.black.withOpacity(0.1),
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 8.0
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.kPadding),
        borderSide: BorderSide.none
      ),
      prefixIcon: const Icon(Icons.search),
    ),
  ),
);