import 'package:flutter/material.dart';

class Task {
  final String title;
  final String subTitle;
  final String defaultDate;
  final String defaultMonth;
  final IconData icon;
  final Color color;

  Task(
    this.title,
    this.subTitle,
    this.defaultDate,
    this.defaultMonth,
    this.icon,
    this.color,
  );
}