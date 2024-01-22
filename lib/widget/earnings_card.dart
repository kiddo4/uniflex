import 'package:flutter/material.dart';

class EarningsCard extends StatelessWidget {
  final earnings;
  const EarningsCard({super.key, required this.earnings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
            width: 152,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.pinkAccent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    earnings.text,
                    style: const TextStyle(
                      color: Color.fromRGBO(26, 28, 30, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                      ),
                Text(
                    earnings.amount,
                    style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(57, 55, 96, 1)
                                ),
                                textAlign: TextAlign.center,
                    ),
            ],)
      ),
    );
  }
}