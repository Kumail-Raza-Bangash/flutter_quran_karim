import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_quran_karim/core/page/page_halaman_baca.dart';
import 'package:flutter_quran_karim/core/page/page_halaman_utama.dart';
import 'package:flutter_quran_karim/core/page/page_splash_screen.dart';
import 'package:flutter_quran_karim/httpovveride.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (_, context) {
        return GetMaterialApp(
          initialRoute: PageHalamanSplashScreen.routeName,
          getPages: [
            GetPage(
                name: PageHalamanSplashScreen.routeName.toString(),
                page: () => PageHalamanSplashScreen(),
                transition: Transition.fadeIn),
            GetPage(
                name: PageHalamanUtama.routeName.toString(),
                page: () => PageHalamanUtama(),
                transition: Transition.leftToRight),
            GetPage(
                name: PageHalamanBaca.routeName.toString(),
                page: () => PageHalamanBaca(),
                transition: Transition.rightToLeft),
          ],
        );
      },
    );
  }
}
