import 'package:flutter/material.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/background_image_clipper_widget.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/circle_button_widget.dart';
import 'package:flutter_yoga_training_app_clone/Presentation/Widgets/login_credentials_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackgroundImageWidget(),
                LoginCredentialWidget(),
              ],
            ),
            CircleButtonWidget(),
          ],
        ),
      ),
    );
  }
}
