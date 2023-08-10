import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';
import 'package:tutorial1/models/categories_models.dart';

final List<CategoriesModel> categoriesList = CategoriesModel.categories;

Widget categories() => Padding(
  padding: const EdgeInsets.all(Constants.kPadding),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
      const Padding(padding: EdgeInsetsDirectional.only(top: 8.0)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categoriesList.length, 
            (index) => SizedBox(
              height: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      categoriesList[index].icon,
                      const Padding(padding: EdgeInsets.only(left: 12.0)),
                      Text(categoriesList[index].name)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);