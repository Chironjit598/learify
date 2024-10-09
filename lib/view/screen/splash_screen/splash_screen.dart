import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learnify/core/app_routes.dart';
import 'package:learnify/utils/app_colors/app_colors.dart';
import 'package:learnify/utils/app_image/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  navigate(){
    Future.delayed(Duration(seconds: 03), (){
      Get.toNamed(AppRoutes.signIn);

    });
  }

  @override
  void initState() {
    navigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitClr,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImage.appLogo, height: 98.h, width: 124.w,)
        
          ],
        ),
      ),
    );
  }
}