import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learnify/core/app_routes.dart';

void main() {
  runApp(const Learnify());
}

class Learnify extends StatelessWidget {
  const Learnify({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
            designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
       builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages:AppRoutes.routes,
          initialRoute: AppRoutes.splash,


        );
       }
    );
  }
}