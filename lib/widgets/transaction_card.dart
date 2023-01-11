// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'dart:math';

import 'package:expense_tracker/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading = transaction.title;
    double headingSize = 16;
    Color headingColor = Colors.black;

    String subHeading = getItemCategoryName(transaction.category);
    Color subHeadingColor = Colors.grey;
    double subHeadingSize = 12;

    double priceSize = 16;
    Color priceColor =
        transaction.type == TransactionType.expense ? Colors.red : Colors.green;

    Color bgColor = Colors.white;
    Color shadowColor = Colors.grey;

    String date = DateFormat('MMM d').format(
      transaction.date,
    );
    double dateSize = 11;

    IconData icon = getItemCategoryIcon(transaction.category);

    double iconSize = 30;
    Color iconBackgroundColor =
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    Color iconColor = Colors.white;

    return GestureDetector(
      onTap: () {
        print('Transaction card tapped');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 1,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            title: Text(
              heading,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: headingColor,
                    fontSize: headingSize,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            subtitle: Text(
              subHeading,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: subHeadingColor,
                    fontSize: subHeadingSize,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(),
                Text(
                  '\$${transaction.amount}',
                  style: TextStyle(
                    color: priceColor,
                    fontSize: priceSize,
                    fontWeight: FontWeight.w600,
                    shadows: const [
                      Shadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  date,
                  style: TextStyle(
                      fontSize: dateSize,
                      fontWeight: FontWeight.w600,
                      shadows: const [
                        Shadow(
                          color: Colors.grey,
                          blurRadius: 3,
                        ),
                      ]),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
