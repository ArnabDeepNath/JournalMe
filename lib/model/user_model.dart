import 'package:flutter/material.dart';

class UserModel {
  late final String FirstName;
  late final String LastName;
  late final Image ProfilePic;
  late double amount;

  UserModel({
    required this.FirstName,
    required this.LastName,
    required this.ProfilePic,
    required this.amount,
  });
}
