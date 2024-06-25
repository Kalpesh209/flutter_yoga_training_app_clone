import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Screens/Home/home_page_screen.dart';

class LoginCredentialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.appPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please Log In',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Material(
            elevation: 10.0,
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppConstants.appPadding * 0.75,
                  horizontal: AppConstants.appPadding,
                ),
                fillColor: AppColors.white,
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email_outlined,
                  size: 25.0,
                  color: AppColors.black.withOpacity(0.4),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Material(
            elevation: 10.0,
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppConstants.appPadding * 0.75,
                  horizontal: AppConstants.appPadding,
                ),
                fillColor: Colors.white,
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.lock_outline,
                  size: 25.0,
                  color: AppColors.black.withOpacity(0.4),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(
            child: Text(
              'Forget Password!',
              style: TextStyle(
                  fontSize: 18, color: AppColors.black.withOpacity(0.4)),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageScreen(),
              ),
            ),
            child: Material(
                elevation: 10.0,
                shadowColor: AppColors.primary,
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  width: size.width,
                  height: size.width * 0.15,
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
