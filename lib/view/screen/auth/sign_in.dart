import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learnify/utils/app_colors/app_colors.dart';
import 'package:learnify/utils/app_image/app_image.dart';
import 'package:learnify/view/screen/auth/controller/auth_controller.dart';
import 'package:learnify/view/screen/splash_screen/custom_text.dart';
import 'package:learnify/view/widget/custom_textFeild.dart';
import 'package:learnify/view/widget/passA_text_field.dart';

class SignIn extends StatelessWidget {
   SignIn({super.key});

  AuthController authController=Get.put(AuthController());

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
                  customTextField(authController.signInEmailController,
                      TextInputType.emailAddress, context, "Email",
                      prefixIcon: Icons.email),

                      SizedBox(
                        height: 30.h,
                      ),

                     Obx(()=>   customTextField(authController.signInpassController,
                      TextInputType.emailAddress, context, "Password",
                      prefixIcon: Icons.lock,
                        suffixIcon: authController.obscureText.value?Icons.visibility_off:Icons.visibility,
                          suffixIconOntap: ()=>authController.togglePasswordVisibility(),
                  obscureText: authController.obscureText.value,
                      ),),

                      SizedBox(
                        height: 5.h,
                      ),

                      Row(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                          CustomText(text: "Forget Password",
                          color: AppColors.secondary,
                          ),

                       
                        ],
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
                    CustomText(text: "Sign In",
                          color: AppColors.primaryClr,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w600,
                          )
                          
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
