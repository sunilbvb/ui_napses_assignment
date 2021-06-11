import 'package:flutter/material.dart';
import 'package:ui_napses_assignment/models/custom_nav_bar_fields_model.dart';
import 'package:ui_napses_assignment/models/tasks_model.dart';

import 'globals.dart';

List requiredListTilesFields = [
  Task('Karolibaugh 1', 'ORDERS: 20 . AGENT: Self', '27', 'MAY', null, null),
  Task(
    'Tarasali 1',
    'ORDERS: 20 . AGENT: DINESH KUMAR',
    '27',
    'MAY',
    Icons.access_time_sharp,
    kRedAccentColor,
  ),
  Task(
    'Akota 1',
    'ORDERS: 20 . AGENT: DINESH KUMAR',
    '27',
    'MAY',
    Icons.access_time_sharp,
    kRedAccentColor,
  ),
  Task(
    'Karolibaugh 2',
    'ORDERS: 20 . AGENT: DINESH KUMAR',
    '27',
    'MAY',
    Icons.check_circle_outline,
    kOrangeColor,
  ),
  Task(
    'Karolibaugh 3',
    'ORDERS: 20 . AGENT: DINESH KUMAR',
    '27',
    'MAY',
    Icons.check_circle_outline,
    kGreenColor,
  ),
];

List<CustomNavBarFields> customNavBarFields = [
  CustomNavBarFields('Home', Icons.home_outlined),
  CustomNavBarFields('Orders', Icons.note_outlined),
  CustomNavBarFields('Tripsheets', Icons.check_box_outlined),
  CustomNavBarFields('Payments', Icons.account_balance_wallet_outlined),
  CustomNavBarFields('Customers', Icons.people_outline),
];
