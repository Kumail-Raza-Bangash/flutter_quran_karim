import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ButtonBack extends StatelessWidget {
  bool? isArrowLeft;

  VoidCallback? onTap;
  ButtonBack(this.onTap, {super.key, this.isArrowLeft});
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: isArrowLeft == false
          ? Image.asset(
              "assets/icon/ic_back.png",
              fit: BoxFit.cover,
              width: 30.w,
              height: 30.h,
            )
          : Image.asset(
              "assets/icon/ic_back_left.png",
              fit: BoxFit.cover,
              width: 30.w,
              height: 30.h,
            ),
    );
  }
}
