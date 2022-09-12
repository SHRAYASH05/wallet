import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String type;
  final double amount;
  final DateTime date;
  final String iconid;
  final String colorid;
  final String textcolor;

  Transaction({
    @required this.id,
    @required this.type,
    @required this.amount,
    @required this.date,
    @required this.iconid,
    @required this.colorid,
    @required this.textcolor,
  });
}
