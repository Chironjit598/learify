import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  //=========================

  TextEditingController signInEmailController=TextEditingController();
    TextEditingController signInpassController=TextEditingController();


    RxBool obscureText = true.obs;
 
 
  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

  
}