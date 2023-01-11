import 'package:expense_tracker/models/transaction_model.dart';

class User {
  String name;
  String email;
  String totalBalance;
  String totalExpense;
  String totalIncome;
  String profileImage;
  List<Transaction> transactions;

  User({
    required this.name,
    required this.email,
    required this.totalBalance,
    required this.totalExpense,
    required this.totalIncome,
    required this.profileImage,
    required this.transactions,
  });
}

final userData = User(
  name: 'John Doe',
  email: 'JohnDoe@gmail.com',
  totalBalance: '12230.00',
  totalExpense: '2310.00',
  totalIncome: '14540.00',
  profileImage: 'https://i.pravatar.cc/150?img=3',
  transactions: [
    Transaction(
      id: '1',
      title: 'Swiggy',
      category: ItemCategory.food,
      amount: '31230.00',
      date: DateTime.now(),
      type: TransactionType.expense,
    ),
    Transaction(
      id: '2',
      title: 'Myntra',
      category: ItemCategory.clothing,
      amount: '100000.00',
      date: DateTime.now(),
      type: TransactionType.expense,
    ),
    Transaction(
      id: '3',
      title: 'Movie',
      category: ItemCategory.entertainment,
      amount: '10.00',
      date: DateTime.parse('2023-01-09'),
      type: TransactionType.income,
    ),
    Transaction(
      id: '4',
      title: 'Travel',
      category: ItemCategory.travel,
      amount: '20.00',
      date: DateTime.parse('2021-02-02'),
      type: TransactionType.expense,
    ),
    Transaction(
      id: '5',
      title: 'Other',
      category: ItemCategory.other,
      amount: '432.00',
      date: DateTime.parse('2021-02-02'),
      type: TransactionType.income,
    ),
  ],
);
