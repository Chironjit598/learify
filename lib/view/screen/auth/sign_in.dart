import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnify/utils/app_image/app_image.dart';
import 'package:learnify/view/widget/custom_textFeild.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImage.topImg,
                  fit: BoxFit.cover,
                  height: 320.h,
                ),
                Positioned(
                    top: 220.h,
                    left: 120.w,
                    child: Center(child: Image.asset(AppImage.appLogo)))
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  customTextField(TextEditingController(),
                      TextInputType.emailAddress, context, "Email",
                      prefixIcon: Icons.email),

                      SizedBox(
                        height: 30.h,
                      ),
                  customTextField(TextEditingController(),
                      TextInputType.emailAddress, context, "Email",
                      prefixIcon: Icons.email),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
