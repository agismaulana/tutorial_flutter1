
import 'package:flutter/material.dart';

class CategoriesModel {
  Icon icon;
  String name;

  CategoriesModel({
    required this.icon,
    required this.name,
  });

  static List<CategoriesModel> categories = [
    CategoriesModel(
      icon: const Icon(Icons.brush, color: Colors.red,),
      name: "Arts"
    ),
    CategoriesModel(
      icon: const Icon(Icons.computer, color: Colors.lightBlue,),
      name: "Programming & networks"
    ),
    CategoriesModel(
      icon: const Icon(Icons.group, color: Colors.lightGreen,),
      name: "Social"
    ),
    CategoriesModel(
      icon: const Icon(Icons.science, color: Colors.yellow,),
      name: "Science & Physics"
    ),
    CategoriesModel(
      icon: const Icon(Icons.calculate, color: Colors.deepOrange,),
      name: "Mathematics"
    ),
    CategoriesModel(
      icon: const Icon(Icons.sports_basketball, color: Colors.deepOrange,),
      name: "Sports"
    ),
  ];
}