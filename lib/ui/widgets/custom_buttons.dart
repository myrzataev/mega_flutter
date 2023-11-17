import 'package:first_flutter_lesson/ui/theme/app_colors.dart';
import 'package:first_flutter_lesson/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customButtonPassword extends StatelessWidget {
  final String title;

  const customButtonPassword({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 111.w,
      color: AppColors.bgColor,
      child: Theme(
        data: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.bgColor),
              foregroundColor: MaterialStateProperty.all(AppColors.black),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: AppColors.black),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: AppColors.darkGreen,
            fixedSize: Size(349.w, 52.h)),
        onPressed: () {},
        child: Text(
          'Login',
          style: AppFonts.s20w700.copyWith(color: Colors.white),
        ));
  }
}
