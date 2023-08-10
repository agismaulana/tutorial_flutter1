import 'package:flutter/material.dart';

class HomeModels {
  String image;
  String title;
  int quantity;
  Color color;

  HomeModels({
    required this.image,
    required this.title,
    required this.quantity,
    required this.color
  });

  static List<HomeModels> courses = [
    HomeModels(
      image: "assets/images/iconIPB.png", 
      title: "Ujian IPB", 
      quantity: 10,
      color: Colors.blueAccent,
    ),
    HomeModels(
      image: "assets/images/iconITB.png", 
      title: "Ujian ITB", 
      quantity: 12,
      color: Colors.blueGrey
    ),
    HomeModels(
      image: "assets/images/iconUNJ.png", 
      title: "Ujian UNJ", 
      quantity: 15,
      color: Colors.yellowAccent.withOpacity(0.4)
    ),
    HomeModels(
      image: "assets/images/iconUPI.png", 
      title: "Ujian UPI", 
      quantity: 8,
      color: Colors.blueGrey.shade300
    ),
  ];
}