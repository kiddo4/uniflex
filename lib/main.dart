import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniflex/splash_scrn.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 800),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return const MaterialApp(
            
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'Uni flex',
            themeMode: ThemeMode.light,
            home: SplashScr(),
          );
        });
  }
}
