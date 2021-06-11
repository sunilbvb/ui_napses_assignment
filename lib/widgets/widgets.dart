import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_napses_assignment/constants/globals.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:ui_napses_assignment/models/tasks_model.dart';
import 'package:ui_napses_assignment/view/custom_nav_bar_fields_model.dart';
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

CustomNavigationBarItem customNavBar(
    CustomNavBarFields customNavBar, int index, int currentIndex) {
  return CustomNavigationBarItem(
    icon: Icon(customNavBar.icon),
    title: Text(customNavBar.text)
        .textColor(
            currentIndex == index ? kDarkBlueColor : kNavBarUnSelectedColor)
        .fontSize(12)
        .paddingDirectional(vertical: 10),
  );
}

List<Widget> appBarActions = [
  IconButton(
    icon: Icon(Icons.add).iconColor(kBlackColor).iconSize(30),
    onPressed: () => null,
  ),
];

Widget get appBarLeadingWidget => Container(
  margin: const EdgeInsets.only(left: 10),
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: kGreyColor, width: 1),
  ),
  child: IconButton(
    icon: Icon(Icons.menu).iconColor(kBlackColor),
    onPressed: () => null,
  ),
);