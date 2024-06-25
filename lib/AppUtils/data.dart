import 'package:flutter_yoga_training_app_clone/Models/course_model.dart';
import 'package:flutter_yoga_training_app_clone/Models/style_model.dart';

final _standStyle = StyleModel(
  imageUrl: 'assets/images/pose2.png',
  name: 'Standing Style',
  time: 5,
);
final _sittingStyle = StyleModel(
  imageUrl: 'assets/images/pose1.png',
  name: 'Sitting Style',
  time: 8,
);
final _legCrossStyle = StyleModel(
  imageUrl: 'assets/images/pose3.png',
  name: 'Leg Cross Style',
  time: 6,
);

final styles = [_standStyle, _sittingStyle, _legCrossStyle];

final _course1 = CourseModel(
    imageUrl: 'assets/images/course1.jpg',
    name: 'Advance Stretchings',
    time: 45,
    students: 'Advanced');

final _course2 = CourseModel(
    imageUrl: 'assets/images/course2.jpg',
    name: 'Daily Yoga',
    time: 30,
    students: 'Intermediate');

final _course3 = CourseModel(
    imageUrl: 'assets/images/course3.jpg',
    name: 'Meditation',
    time: 20,
    students: 'Beginner');

final List<CourseModel> courses = [_course1, _course3, _course2];
