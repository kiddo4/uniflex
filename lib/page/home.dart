import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniflex/ui/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    const Icon(Icons.home_filled, size: 30,),
    const Icon(Icons.work, size: 30,),
    const Icon(Icons.add, size: 30,),
    const Icon(Icons.message_rounded, size: 30,),
    const Icon(Icons.contact_page, size: 30,),
  ];
  final int index = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          // appBar: AppBar(
            
          //   elevation: 0,
          //   backgroundColor: Colors.transparent,
          //   leading: const Row(
          //     children: [
          //       SizedBox(width: 5,),
          //       CircleAvatar(
          //         backgroundImage: AssetImage(Assets.pfp),
          //         backgroundColor: Colors.transparent,
          //       ),

          //     ],
          //   ),
          //   title: const Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //        Text(
          //         'Welcome back!',
          //         style: TextStyle(
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w400,
          //                         color: Color.fromRGBO(57, 55, 96, 1)
          //                     ),
          //         ),
          //         Text(
          //               "Adewale Psalmzy",
          //               style: TextStyle(
          //                 color: Color.fromRGBO(26, 28, 30, 1),
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w800,
          //               )
          //           )
          //     ],
          //   ),
          //   actions: const [
          //     Icon(
          //       Icons.notifications,
          //       color: Colors.black,
          //       )
          //   ],
          // ),
          body: Column(
            children: [
              SizedBox(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(Assets.pfp),
                  ),
                  title: const Text(
                  'Welcome back!',
                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(57, 55, 96, 1)
                              ),
                  ),
                  subtitle: const Text(
                        "Adewale Psalmzy",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 28, 30, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                        )
                    ),
                  trailing: SvgPicture.asset(Assets.notification),
                ),
              ),
              const SizedBox(height: 20,),
              Container(

              ),
              const SizedBox(height: 20,),
              const SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                        "My Savings Plans",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 28, 30, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                        )
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: Color.fromRGBO(26, 28, 30,1)
                      )
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: const IconThemeData(color: Colors.grey)
            ),
            child: CurvedNavigationBar(
              buttonBackgroundColor: const Color.fromRGBO(57, 55, 96, 1),
              backgroundColor: Colors.transparent,
              height: 70,
              items: items,
              index: index,
              ),
          ),
        ),
      ),
    );
  }
}