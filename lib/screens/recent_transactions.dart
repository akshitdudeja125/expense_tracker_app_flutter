import 'package:expense_tracker/models/user_model.dart';
import 'package:expense_tracker/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({super.key});

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Recent Transactions",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 33, 57),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("Today"),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userData.transactions.length,
              itemBuilder: (context, index) {
                return DateTime.now()
                        .subtract(
                          const Duration(days: 1),
                        )
                        .isBefore(
                          userData.transactions[index].date,
                        )
                    ? TransactionCard(
                        transaction: userData.transactions[index],
                      )
                    : Container();
              },
            ),
            const SizedBox(height: 10),
            Visibility(
              visible: userData.transactions.any(
                (element) =>
                    DateTime.now()
                        .subtract(
                          const Duration(days: 1),
                        )
                        .isAfter(
                          element.date,
                        ) &&
                    DateTime.now()
                        .subtract(
                          const Duration(days: 2),
                        )
                        .isBefore(
                          element.date,
                        ),
              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text("Yesterday"),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userData.transactions.length,
              itemBuilder: (context, index) {
                if (DateTime.now()
                        .subtract(
                          const Duration(days: 1),
                        )
                        .isAfter(
                          userData.transactions[index].date,
                        ) &&
                    DateTime.now()
                        .subtract(
                          const Duration(days: 2),
                        )
                        .isBefore(
                          userData.transactions[index].date,
                        )) {
                  return TransactionCard(
                    transaction: userData.transactions[index],
                  );
                }
                return Container();
              },
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("Older"),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userData.transactions.length,
              itemBuilder: (context, index) {
                if (DateTime.now()
                    .subtract(
                      const Duration(days: 2),
                    )
                    .isAfter(
                      userData.transactions[index].date,
                    )) {
                  return TransactionCard(
                    transaction: userData.transactions[index],
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
