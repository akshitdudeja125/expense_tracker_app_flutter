// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../../random/screens/utils/balance_card.dart';
import '../../random/screens/utils/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BalanceCard(
                balance: '2000',
                expense: '1000',
                income: '12222',
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
