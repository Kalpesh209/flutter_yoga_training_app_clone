import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_images.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/curve_clipper_widget.dart';

class BackgroundImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipperWidget(),
      child: Container(
        height: size.height * 0.55,
        color: AppColors.blueGrey.withOpacity(0.8),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.appPadding / 2,
              vertical: AppConstants.appPadding * 3),
          child: Center(
            child: Image(
              image: AssetImage(AppImages.yogaImg),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
