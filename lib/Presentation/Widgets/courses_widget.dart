import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/data.dart';
import 'package:flutter_yoga_training_app_clone/Models/course_model.dart';

class CoursesWidget extends StatefulWidget {
  @override
  State<CoursesWidget> createState() => _CoursesWidgetState();
}

class _CoursesWidgetState extends State<CoursesWidget> {
  Widget _buildCourses(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;

    CourseModel course = courses[index];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.appPadding,
        vertical: AppConstants.appPadding / 2,
      ),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: AppColors.black.withOpacity(0.3),
                  blurRadius: 30.0,
                  offset: Offset(10, 15))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.appPadding),
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(course.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppConstants.appPadding / 2,
                    top: AppConstants.appPadding / 1.5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.folder_open_rounded,
                            color: AppColors.black.withOpacity(0.3),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            course.students,
                            style: TextStyle(
                              color: AppColors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: AppColors.black.withOpacity(0.3),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            course.time.toString() + ' min',
                            style: TextStyle(
                              color: AppColors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return _buildCourses(context, index);
            },
          ))
        ],
      ),
    );
  }
}
