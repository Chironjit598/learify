import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors/app_colors.dart';

Widget customTextField(
    controller,
    keyboardtype,
    context,
    hinttext,
    {validator,
      bool obscureText = false,
      prefixIcon,
      suffixIcon,
      suffixIconOntap,
      readOnly = false,
    }) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(width: 1, color: AppColors.primaryClr)
    ),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.primaryClr,
        keyboardType: keyboardtype,
        readOnly: readOnly,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
        obscureText: obscureText,
        textInputAction: TextInputAction.next,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 5.w,
              right: 10.w,
            ),
            child: Icon(
              prefixIcon,
              color: AppColors.blackClr,
              size: 28.sp,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              left: 5.w,
              top: 5.h,
              bottom: 5.h,
              right: 10.w,
            ),
            child: InkWell(
              onTap: suffixIconOntap,
              child: Icon(
                suffixIcon,
                color: AppColors.blackClr,
                size: 28.sp,
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide.none,
            borderRadius: BorderRadius.circular(20.r),
          ),
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}