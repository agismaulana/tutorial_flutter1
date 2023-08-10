import 'package:flutter/material.dart';
import 'package:tutorial1/constants.dart';
import 'package:tutorial1/models/top_ranks_models.dart';

final List<TopRankModels> ranks = TopRankModels.topRanks;

Widget topRanks() => Padding(
  padding: const EdgeInsets.all(Constants.kPadding),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Top Ranks",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint("See all ranks");
            },
            child: const Text("See all")
          ),
        ],
      ),
      const Padding(padding: EdgeInsets.only(top: 12.0)),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            ranks.length, 
            (index) => SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                shadowColor: Colors.grey,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Constants.kPadding)),
                child: Padding(
                  padding: const EdgeInsets.all(Constants.kPadding),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(ranks[index].image),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 20.0)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ranks[index].name,
                                style: const TextStyle(
                                  color: Colors.black54
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 8.0)),
                              Text(
                                ranks[index].nameSchool,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54.withOpacity(0.2)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children:  [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(ranks[index].point.toString()),
                        ],
                      )
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