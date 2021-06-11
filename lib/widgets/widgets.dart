import 'package:flutter/material.dart';
import 'package:ui_napses_assignment/constants/globals.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:ui_napses_assignment/models/tasks_model.dart';
import '../constants/globals.dart';

Widget customListTile(Task task) {
  return Container(
    decoration: BoxDecoration(
      color: kLightOrangeColor,
      borderRadius: BorderRadius.circular(16.0),
    ),
    padding: EdgeInsets.symmetric(vertical: 15.0),
    child: ListTile(
      leading: Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: kGreyColor),
        ),
        child: Container(
          color: kWhiteColor,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: task.defaultDate,
                ).fontWeight(FontWeight.bold).fontSize(12),
                TextSpan(text: '\n${task.defaultMonth}').fontSize(10),
              ],
            ),
          ).padding(all: 5),
        ),
      ),
      subtitle: Text(task.subTitle).fontSize(10),
      title: Text(
        task.title,
        textScaleFactor: 1.0,
      ).fontWeight(FontWeight.bold),
      trailing: Icon(
        task.icon,
        color: task.color,
      ),
      // task.icon,
    ),
  ).paddingDirectional(vertical: 15);
}

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
