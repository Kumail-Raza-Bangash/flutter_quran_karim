import 'package:flutter/material.dart';
import 'package:flutter_quran_karim/core/page/page_halaman_utama.dart';
import 'package:flutter_quran_karim/core/widget/label/text_description.dart';
import 'package:flutter_quran_karim/res/colors/list_color.dart';
import 'package:flutter_quran_karim/res/dimension/size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PageHalamanSplashScreen extends StatefulWidget {
  static String? routeName = "/PageHalamanSplashScreen";

  @override
  State<PageHalamanSplashScreen> createState() =>
      _PageHalamanSplashScreenState();
}

class _PageHalamanSplashScreenState extends State<PageHalamanSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Get.offAndToNamed(
        PageHalamanUtama.routeName.toString(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ListColor.gradientTopColor, // #08F4F9
                ListColor.gradientBottomColor
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SafeArea(
                child: ComponentTextDescription(
                  "Al-Quran",
                  fontSize: size.sizeTextHeaderGlobal.sp,
                  fontWeight: FontWeight.bold,
                  teksColor: ListColor.warnaTeksPutihGlobal,
                ),
              ),
              SvgPicture.asset(
                "assets/icon/ic_kaligrafi.svg",
                fit: BoxFit.cover,
                width: 300.w,
                height: 100.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              ComponentTextDescription(
                "Read Al-Quran Easily",
                fontSize: size.sizeTextDescriptionGlobal.sp,
                fontWeight: FontWeight.bold,
                teksColor: ListColor.warnaTeksPutihGlobal,
              ),
              
             


            ],
          ),
        ),


        
              // Add a Positioned widget to position the text 5px from the bottom of the page
              Center(
                child: Column(
                  children: [
                    Spacer(),
                    Positioned(
                      bottom: 15.h,
                      right: 0,
                      left: 0,
                      child: ComponentTextDescription(
                        "theKami",
                        fontSize: size.sizeTextDescriptionGlobal.sp,
                        teksColor: ListColor.warnaTeksPutihGlobal,
                      ),
                    ),
                  ],
                ),
              ),


      ],
    ),


    
    );
  }
}
