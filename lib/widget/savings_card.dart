import 'package:flutter/material.dart';
import 'package:uniflex/model/savings.dart';

class SavingsCard extends StatelessWidget {
  final savings;
  const SavingsCard({super.key, required this.savings});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
                  
                  title: Text(
                        "Adewale Psalmzy",
                        style: TextStyle(
                          color: Color.fromRGBO(26, 28, 30, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                        )
                    ),
                  
                  subtitle: Text(
                  '$savings.amount',
                  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(57, 55, 96, 1)
                              ),
                  ),
                  trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(26, 28, 30,1)
                      ),
                ),
        ],
      ),
    );
  }
}