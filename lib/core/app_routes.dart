import 'package:get/get.dart';
import 'package:learnify/view/screen/auth/sign_in.dart';
import 'package:learnify/view/screen/onbording/onbording.dart';
import 'package:learnify/view/screen/splash_screen/splash_screen.dart';

class AppRoutes {
  static const splash = "/splash";
  static const onbording = "/onbording";
  static const signIn = "/signIn";

  static final List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onbording, page: () => Onbording()),
        GetPage(name: signIn, page: () => SignIn())

  ];
}
