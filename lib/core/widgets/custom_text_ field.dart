import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const CustomFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: const Color(0xFF7A1FA0),
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,

          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },

          style: TextStyle(fontSize: 14.sp, color: Colors.black87),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 150),
              fontSize: 13.sp,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 12.h,
            ),
            filled: true,
            fillColor: Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.5.r),
              borderSide: BorderSide(color: Color(0xFF7A1FA0), width: 1.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.5.r),
              borderSide: const BorderSide(
                color: Color(0xFF7A1FA0),
                width: 1.5,
              ),
            ),
            suffixIcon: isPassword
                ? Icon(
                    Icons.visibility_off_outlined,
                    color: const Color(0xFF7A1FA0),
                    size: 20.sp,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
