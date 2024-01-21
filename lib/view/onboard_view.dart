import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniflex/page/home.dart';
import 'package:uniflex/ui/assets.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final containerHeight = height * 0.65;
    // final double sHeight = containerHeight - ;
    return Scaffold(
     
      body: Column(
        children: [
          Container(
            height: containerHeight,
            width: double.infinity,
            // decoration: const BoxDecoration(
            //   color:Color.fromRGBO(72, 67, 210, 1),
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(80),
            //    bottomRight: Radius.circular(80),
               
            //    )
            // ),
            // child: Center(
            //   child: Column(
            //     children: [
            //       const SizedBox(height: 9,),
            //       Center(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Image.asset(
            //               Assets.logo,
            //               height: 30,
            //               width: 30,
            //               ),
            //             const Text(
            //                 "Uni Flex",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.w700,
            //                 )
            //             )
            //           ],
            //         ),
            //       ),
            //       SizedBox(height: height * 0.16),
            //       SizedBox(
            //         child: Image.asset(Assets.design),
            //       )
            //     ],
            //   ),
            // ),
            child: ClipRRect(
              child: Image.asset(
                Assets.onboarding,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                            "Set your finances \n right",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                
                                color: Color.fromRGBO(57, 55, 96, 1)
                            ),
                            textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      
                        const Text(
                              "Features that can make it easier for you to save \nand plan finances in the future",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 55, 96, 1)
                              ),
                              textAlign: TextAlign.center,
                          ),
                         const SizedBox(height: 20),
                          
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                
                                builder: (context) => HomePage()
                                ),
                              );
                          },
                          height: 50,
                          minWidth: 327,
                          color: const Color.fromRGBO(72, 67, 210, 1),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Text(
                                "Create Account",
                                style: TextStyle(
                                  color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                ),
                          ),
                          ),
                          const SizedBox(height: 20,),
                          const Text(
                              "Login",
                              style: TextStyle(
                                color: Color.fromRGBO(26, 28, 30, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                              )
                          )
                    ],
                  ),
                
              ),
          )
        ],
      ),
    );
  }
}