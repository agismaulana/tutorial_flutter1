import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';
import 'package:tutorial1/models/home_models.dart';

final List<HomeModels> courses = HomeModels.courses;

Widget buildLearning() => Padding(
  padding: const EdgeInsets.all(Constants.kPadding),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Learning Courses",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint("See all Courses");
            },
            child: const Text("See all")
          ),
        ],
      ),
      const Padding(padding: EdgeInsets.only(top: 12.0)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            courses.length, 
            (index) => SizedBox(
              width: 240,
              height: 160,
              child: Card(
                color: courses[index].color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Constants.kPadding)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(courses[index].image),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 12.0)),
                    Text(
                      courses[index].title,
                      style: const TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);