import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/AppUtils/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.42,
      right: size.width * 0.15,
      child: FloatingActionButton(
        onPressed: () {},
        elevation: 5.0,
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.arrow_back,
          size: 30.0,
        ),
      ),
    );
  }
}
