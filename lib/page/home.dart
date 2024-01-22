import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniflex/model/earnings.dart';
import 'package:uniflex/model/savings.dart';
import 'package:uniflex/ui/assets.dart';
import 'package:uniflex/widget/earnings_card.dart';
import 'package:uniflex/widget/savings_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    CurvedNavigationBarItem(
      child: Image.asset(
              Assets.home,
              height: 25,
              ),
      label: 'Home',
      labelStyle: const TextStyle(
        color: Color.fromRGBO(2, 41, 100, 0.3)
      )
      ),
      
    CurvedNavigationBarItem(
      child: Image.asset(
              Assets.breifcase,
              height: 25,
              ),
      label: 'Jobs',
      labelStyle: const TextStyle(
        color: Color.fromRGBO(2, 41, 100, 0.3)
      )
      ),
    const CurvedNavigationBarItem(
      child: Icon(Icons.add, size: 30,),
      label: '',
      labelStyle: TextStyle(
        color: Color.fromRGBO(2, 41, 100, 0.3)
      )
      ),
   CurvedNavigationBarItem(
      child: Image.asset(
              Assets.message,
              height: 25,
              ),
      label: 'Messages',
      labelStyle: const TextStyle(
        color: Color.fromRGBO(2, 41, 100, 0.3)
      )
      ),
    CurvedNavigationBarItem(
      child: Image.asset(
              Assets.profile,
              height: 25,
              ),
      label: 'Profile',
      labelStyle: const TextStyle(
        color: Color.fromRGBO(2, 41, 100, 0.3)
      )
      ),
  ];
  final int index = 2;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          body: Container(
            decoration: BoxDecoration(
              gradient: 
          LinearGradient(
                colors: [Colors.white, const Color.fromRGBO(72, 67, 210, 1).withOpacity(0.09), const Color.fromRGBO(72, 67, 210, 1).withOpacity(0.09),Colors.transparent],
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
            stops: [0.0,0.0,0.3,1.0]
              ),
            ),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(Assets.pfp),
                      radius: 25,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                    gradient: 
                    const LinearGradient(
                          colors: [Color.fromRGBO(57, 55, 96, 1), Color.fromRGBO(72, 67, 210, 1)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                      // stops: [0.0,0.0,0.3,1.0]
                        ),
                    borderRadius: BorderRadius.circular(15)
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                            'Total Savings',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                                  ),
                            
                        ),
                const SizedBox(height: 5),
                      const Text(
                      '€12,293.28',
                      style: TextStyle(
                              color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                            )
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.withdraw,
                                      height: 25,
                                      ),
                                    const Text(
                                      'withdraw',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                      )
                                  ],
                                ),
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.recieve,
                                      height: 25,
                                      ),
                                    const Text(
                                      'Recieve',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                      )
                                  ],
                                ),
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.bill,
                                      height: 25,
                                      ),
                                    const Text(
                                      'Pay bills',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),

                                  ],
                                ),
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.more,
                                      height: 25,
                                      ),
                                    const Text(
                                      'more',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                      )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      ],
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                            "My Saving Plans",
                            style: TextStyle(
                              color: Color.fromRGBO(26, 28, 30, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                            )
                        ),
                        const SizedBox(width: 10,),
                        Image.asset(Assets.arrow, height: 30,)
                          ],
                        ),
                  ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 135,
                  child:
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: savings.length,
                        itemBuilder: (context, index){
                          return SavingsCard(
                            text: savings[index].text,
                            amount: savings[index].amount,
                          );}
                        )
                   
                ),
                
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                            "My Earnings",
                            style: TextStyle(
                              color: Color.fromRGBO(26, 28, 30, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                            )
                        ),
                        const SizedBox(width: 10,),
                        Image.asset(Assets.arrow, height: 30,)
                          ],
                        ),
                  ),
                      
               
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  height: 135,
                  child: 
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: earnings.length,
                        itemBuilder: (context, index){
                          return EarningsCard(
                            earnings: earnings[index],
                          );}
                        )
                    
                ),
                const SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                            "Swap Currency",
                            style: TextStyle(
                              color: Color.fromRGBO(26, 28, 30, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                            )
                        ),
                        const SizedBox(width: 10,),
                        Image.asset(Assets.arrow, height: 30,)
                          ],
                        ),
                  ),
              ],
            ),
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
      )
   ;
  }
  
}

