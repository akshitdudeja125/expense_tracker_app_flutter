import 'package:flutter/material.dart';
class ExpenseCard extends StatefulWidget {
  const ExpenseCard({super.key});

  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Expense Card'),
    );
  }
}
