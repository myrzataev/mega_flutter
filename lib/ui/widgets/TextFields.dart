// ignore_for_file: must_be_immutable

import 'package:first_flutter_lesson/ui/theme/app_colors.dart';
import 'package:first_flutter_lesson/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool customSuffixIcon;
  bool obscureText;
  CustomTextField(
      {Key? key,
      required this.hintText,
      required this.labelText,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.customSuffixIcon = false})
      : super(key: key);

  get isShown => null;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38, right: 39),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.customSuffixIcon
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: Icon(
                    widget.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.black,
                  ),
                )
              : null,
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.whiteDarklighter)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.whiteDarklighter)),
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: AppFonts.s16w400.copyWith(color: AppColors.darkGreen),
          hintStyle: AppFonts.s16w400.copyWith(color: AppColors.whiteDark),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  final String title;
  final String img;
  const Button2({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: AppColors.bgColor,
          fixedSize: Size(349.w, 52.h)),
      onPressed: () {},
      child: Row(
        children: [
          SizedBox(
            width: 45.w,
          ),
          Image.asset(
            img,
            height: 31.h,
            width: 31.w,
          ),
          SizedBox(
            width: 53.w,
          ),
          Text(
            title,
            style: AppFonts.s16w400.copyWith(color: AppColors.black),
          )
        ],
      ),
    );
  }
}
