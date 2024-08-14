import 'package:flutter/material.dart';
import 'package:journalapp/model/transaction_model.dart';

class UserProvider with ChangeNotifier {
  final List<TransactionModel> _tasks = [];
  List<TransactionModel> get tasks => _tasks;

  // Adding Tasks to the list
  void add(String name) {
    _tasks.add(
      TransactionModel(
        Name: name,
        Desc: '',
        Type: '',
        CreatedAt: DateTime.fromMillisecondsSinceEpoch(1),
        IconName: '',
        amount: 0.0,
        userID: '',
      ),
    );
    notifyListeners();
  }

  // Removing Task where name is the given name

  void remove(String name) {
    _tasks.removeWhere((item) => item.Name == name);
    notifyListeners();
  }

  // Updating Task Name to New Name
  void edit(
    String name, {
    String? newName,
  }) {
    try {
      TransactionModel item = _tasks.firstWhere((item) => item.Name == name);
      if (newName != null) {
        item.Name = newName;
      }
      notifyListeners();
    } catch (e) {
      // Handle the case when the item is not found
      print('Item not found');
    }
  }
}
