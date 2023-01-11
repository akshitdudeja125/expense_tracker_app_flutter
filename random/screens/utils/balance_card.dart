// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../random/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expense;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.income,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 180,
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // color: Color.fromARGB(255, 192, 172, 172).withOpacity(0.2),
            color: Colors.grey.shade800,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'BALANCE',
                style: TextStyle(
                  color: cardTextColor,
                  fontSize: 18,
                  fontFamily: GoogleFonts.lora().fontFamily,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\u{20B9}$balance',
                style: TextStyle(
                  color: cardAmountColor,
                  fontSize: 40,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade100,
                    ),
                    child: Icon(
                      Icons.arrow_upward_sharp,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Income',
                        style: TextStyle(
                          color: cardTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\u{20B9}$income',
                        style: TextStyle(
                          color: cardAmountColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expense',
                        style: TextStyle(
                          color: cardTextColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\u{20B9}$expense',
                        style: TextStyle(
                          color: cardAmountColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.shade100,
                    ),
                    child: Icon(
                      Icons.arrow_downward_sharp,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
