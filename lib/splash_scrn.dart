import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniflex/ui/assets.dart';
import 'package:uniflex/view/onboard_view.dart';

class SplashScr extends StatefulWidget {
  const SplashScr({super.key});

  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {

  @override
  void initState() {
    super.initState();
    navigate();
    
    // Continue the animation for a specified duration
  }

void navigate() async { 
    Future.delayed(const Duration(seconds: 4));
    
    Navigator.pushReplacement(
            context,
            CupertinoPageRoute(builder: (_) => const OnboardView()),
          );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(72, 67, 210, 1),
      body: Center(
        child: SizedBox(
          height: 87,
          width: 83,
          child: Column(
            children: [
              Image.asset(Assets.logo),
              const Text(
                  "Uni Flex",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                  )
        )
            ],
          ),
        ),
      ),
    );
  }
}