import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/courses_widget.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/custom_app_bar_widget.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/diff_styles_widget.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int selsctedIconIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(top: AppConstants.appPadding * 2),
        child: Column(
          children: [
            CustomAppBarWidegt(),
            DiffStyles(),
            CoursesWidget(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selsctedIconIndex,
        buttonBackgroundColor: AppColors.primary,
        height: 60.0,
        color: AppColors.white,
        onTap: (index) {
          setState(() {
            selsctedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(
            Icons.play_arrow_outlined,
            size: 30,
            color: selsctedIconIndex == 0 ? AppColors.white : AppColors.black,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: selsctedIconIndex == 1 ? AppColors.white : AppColors.black,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color: selsctedIconIndex == 2 ? AppColors.white : AppColors.black,
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
            color: selsctedIconIndex == 3 ? AppColors.white : AppColors.black,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: selsctedIconIndex == 4 ? AppColors.white : AppColors.black,
          ),
        ],
      ),
    );
  }
}
