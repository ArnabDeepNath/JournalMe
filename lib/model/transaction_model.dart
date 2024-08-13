import 'package:flutter/material.dart';

class TransactionModel {
  late String Name;
  late String Desc;
  late String Type;
  late DateTime CreatedAt;
  late String IconName;

  TransactionModel({
    required this.Name,
    required this.Desc,
    required this.Type,
    required this.CreatedAt,
    required this.IconName,
  });
}
