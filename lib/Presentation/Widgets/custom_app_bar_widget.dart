import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_images.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_strings.dart';

class CustomAppBarWidegt extends StatelessWidget {
  const CustomAppBarWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppConstants.appPadding / 8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstants.appPadding / 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(AppConstants.appPadding / 8),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage(AppImages.propicImg),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Text(
                AppStrings.kalpeshKhandla,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 30.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '0',
                        style: TextStyle(color: AppColors.white, fontSize: 8),
                      ),
                    ),
                  )
                ],
              ),
              Transform(
                transform: Matrix4.rotationY(math.pi),
                alignment: Alignment.center,
                child: Icon(
                  Icons.sort_rounded,
                  size: 30.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
