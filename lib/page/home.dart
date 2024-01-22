import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
    const Icon(Icons.home_filled, size: 30,),
    const Icon(Icons.work, size: 30,),
    const Icon(Icons.add, size: 30,),
    const Icon(Icons.message_rounded, size: 30,),
    const Icon(Icons.contact_page, size: 30,),
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
                    LinearGradient(
                          colors: [Color.fromRGBO(57, 55, 96, 1), Color.fromRGBO(72, 67, 210, 1)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                      // stops: [0.0,0.0,0.3,1.0]
                        ),
                    borderRadius: BorderRadius.circular(15)
                      ),
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

