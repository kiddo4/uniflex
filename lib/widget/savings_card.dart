import 'package:flutter/material.dart';
import 'package:uniflex/model/savings.dart';

class SavingsCard extends StatelessWidget {
  final String text;
  final String amount;
  const SavingsCard({super.key, required this.text, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 152,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                            text,
                            style: const TextStyle(
                              color: Color.fromRGBO(26, 28, 30, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                            )
                        ),
                const SizedBox(height: 5),
                      Text(
                      '€$amount',
                      style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(57, 55, 96, 1)
                                  ),
                      ),
                    ],
                  ),
                   const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromRGBO(26, 28, 30,1)
                          ),
                ],
               
              ),
            ),
           const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LinearProgressIndicator(
                      value: 0.6,
                      color: Color.fromRGBO(72, 67, 210, 1),
                      backgroundColor: Colors.grey[100],
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
