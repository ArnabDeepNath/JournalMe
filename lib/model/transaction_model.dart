import 'package:flutter/material.dart';

class TransactionModel {
  late String Name;
  late String Desc;
  late String Type;
  late DateTime CreatedAt;
  late String IconName;
  late double amount;
  late String userID;

  TransactionModel({
    required this.Name,
    required this.Desc,
    required this.Type,
    required this.CreatedAt,
    required this.IconName,
    required this.amount,
    required this.userID,
  });
}
