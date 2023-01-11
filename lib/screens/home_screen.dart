import 'package:expense_tracker/models/user_model.dart';
import 'package:expense_tracker/screens/recent_transactions.dart';

import 'package:expense_tracker/widgets/expense_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color red = Color.fromARGB(255, 241, 118, 118);
    const Color green = Color.fromARGB(255, 92, 195, 95);
    const Color balanceTextColor = Color(0xFF3a4d62);
    const Color balanceColor = Color(0xFF3a4d62);
    const double balanceFontSize = 25;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            header(context),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Text(
                userData.totalBalance,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: balanceColor,
                      fontSize: balanceFontSize,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Text(
              "Total Balance",
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: balanceTextColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: IncomeExpenseCard(
                      bgColor: green,
                      label: "Income",
                      balance: "\$${userData.totalIncome}",
                      // balance:   ,
                      icon: Icons.arrow_upward),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: IncomeExpenseCard(
                    bgColor: red,
                    label: "Expenses",
                    balance: '\$${userData.totalExpense}',
                    icon: Icons.arrow_downward,
                  ),
                ),
              ],
            ),
            const RecentTransactions(),
          ],
        ),
      ),
    );
  }
}

ListTile header(BuildContext context) {
  return ListTile(
    title: Text(
      'Hello, ${userData.name}',
      style: Theme.of(context).textTheme.headline6,
    ),
    subtitle: Text(
      'Here\'s what you\'ve spent today',
      style: Theme.of(context).textTheme.subtitle2,
    ),
    trailing: GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/profile');
      },
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(userData.profileImage),
      ),
    ),
  );
}
