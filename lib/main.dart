import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniflex/splash_scrn.dart';
import 'package:flutter/services.dart';
void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
   
  // });
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 800),
        minTextAdapt: true,
        
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
