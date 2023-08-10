import 'package:flutter/material.dart';
import 'package:tutorial1/pages/home/widgets/app_bar.dart';
import 'package:tutorial1/pages/home/widgets/bottom_bar.dart';
import 'package:tutorial1/pages/home/widgets/categories.dart';
import 'package:tutorial1/pages/home/widgets/fab_button.dart';
import 'package:tutorial1/pages/home/widgets/search_bar.dart';
import 'package:tutorial1/pages/home/widgets/top_ranks.dart';
import 'widgets/learning_courses.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            searchBar(),
            buildLearning(),
            categories(),
            topRanks(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buttonFab(),
      bottomNavigationBar: bottomBar(),
    );
  }
}