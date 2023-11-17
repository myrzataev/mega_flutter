import 'dart:math';

import 'package:first_flutter_lesson/ui/theme/app_colors.dart';
import 'package:first_flutter_lesson/ui/theme/app_fonts.dart';
import 'package:first_flutter_lesson/ui/widgets/TextFields.dart';
import 'package:first_flutter_lesson/ui/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 102,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 71.h,
                width: 171.w,
                child: Center(
                  child: Text(
                    'Sign in',
                    style: AppFonts.s48w400.copyWith(color: AppColors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 133.h,
            ),
            CustomTextField(
              hintText: "Loremipsum@gmail.com",
              labelText: 'EMAIL OR PHONE',
            ),
            SizedBox(
              height: 28.h,
            ),
            CustomTextField(
              customSuffixIcon: true,
              labelText: 'PASSWORD',
              hintText: '******',
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            SizedBox(
              height: 12.h,
            ),
            customButtonPassword(title: 'Forgot password',),
            SizedBox(
              height: 34.h,
            ),
            Button(),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: 42.w,
              height: 21.h,
              child: Text(
                'OR',
                style: AppFonts.s16w300.copyWith(color: AppColors.black),
              ),
            ),
            Button2(
              img: 'lib/assets/images/google.png',
              title: 'Continue With Google',
            ),
            SizedBox(
              height: 13.h,
            ),
            Button2(
                img:
                    '/Users/murat/Desktop/dart_mega/class_work2/lib/assets/images/facebook.png',
                title: 'Continue With Facebook'),
            SizedBox(
              height: 51.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButtonPassword(title: 'Don’t Have an account yet?',),
                  SizedBox(
                    width: 60.w,
                  ),
                  Container(
                    child: Text(
                      'SIGN UP',
                      style: AppFonts.s13w700.copyWith(color: AppColors.yellow),
                    ),
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
