// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
    Color cardBackgroundColor = Colors.grey.shade200;
    Color cardTextColor = Colors.black;
    Color cardAmountColor = Colors.grey.shade800;
    double cardTextSize = 16;
    double cardPriceSize = 16;
    double cardBalaceSize = 24;
    double cardBalanceTextSize = 18;

    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 180,
          decoration: BoxDecoration(
            color: cardBackgroundColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
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
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: cardTextColor,
                          fontSize: cardBalanceTextSize,
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    balance,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: cardAmountColor,
                          fontSize: cardBalaceSize,
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
                          // Icons.arrow_upward,
                          Icons.arrow_upward,
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
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: cardTextColor,
                                      fontSize: cardTextSize,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$$income',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: cardAmountColor,
                                      fontSize: cardPriceSize,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expense',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: cardTextColor,
                                      fontSize: cardTextSize,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$$expense',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: cardAmountColor,
                                      fontSize: cardPriceSize,
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
                          Icons.arrow_downward_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
