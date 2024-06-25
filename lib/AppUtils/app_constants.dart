/*
Title: AppConstants used thorough App
Purpose:AppConstants used thorough App
Created On: 24/06/2023
Edited On:24/06/2023
Author: Kalpesh Khandla
*/

import 'package:flutter_yoga_training_app_clone/AppUtils/app_images.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_yoga_training_app_clone/Models/course_model.dart';

class AppConstants {
  static const double appPadding = 20.0;
  // Base Image Path
  static const String baseImagePath = 'assets/images';

  var _course1 = CourseModel(
    imageUrl: AppImages.course1Img,
    name: AppStrings.advanceStretchings,
    time: 45,
    students: AppStrings.advance,
  );

  var _course2 = CourseModel(
    imageUrl: AppImages.course2Img,
    name: AppStrings.daiyYoga,
    time: 30,
    students: AppStrings.intermediate,
  );

  var _course3 = CourseModel(
    imageUrl: AppImages.course3Img,
    name: AppStrings.mediatate,
    time: 20,
    students: AppStrings.beginner,
  );

  // final List<CourseModel> courses = [
  //   _course1,
  //   _course3,
  //   _course2,
  // ];
}
