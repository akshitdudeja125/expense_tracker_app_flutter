import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final ItemCategory category;
  final String amount;
  final DateTime date;
  final TransactionType type;

  Transaction({
    required this.id,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.type,
  });
}

enum TransactionType { expense, income }

enum ItemCategory {
  food,
  clothing,
  entertainment,
  travel,
  technology,
  other,
}

Map<ItemCategory, String> itemCategoryNameMap = {
  ItemCategory.food: 'Food',
  ItemCategory.clothing: 'Clothing',
  ItemCategory.entertainment: 'Entertainment',
  ItemCategory.travel: 'Travel',
  ItemCategory.technology: 'Technology',
  ItemCategory.other: 'Other',
};

Map<ItemCategory, IconData> itemCategoryMap = {
  ItemCategory.food: Icons.fastfood,
  ItemCategory.clothing: Icons.shopping_bag,
  ItemCategory.entertainment: Icons.movie,
  ItemCategory.travel: Icons.flight,
  ItemCategory.technology: Icons.computer,
  ItemCategory.other: Icons.more_horiz,
};

IconData getItemCategoryIcon(ItemCategory category) {
  return itemCategoryMap[category]!;
}

String getItemCategoryName(ItemCategory category) {
  return itemCategoryNameMap[category]!;
}
