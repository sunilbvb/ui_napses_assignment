import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
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
        ),
        child: Container(
          color: kWhiteColor,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${task.defaultDate}',
                ).fontWeight(FontWeight.bold).fontSize(14),
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

ThemeData get datePickerThemeData => ThemeData(
      primaryColor: kIndigoColor,
      primaryColorDark: kIndigoColor,
      bottomAppBarColor: kIndigoColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: kDarkBlueColor),
    );

MaterialRoundedDatePickerStyle get styleDatePickerMethod =>
    MaterialRoundedDatePickerStyle(
      textStyleDayButton: TextStyle(fontSize: 0, color: Colors.white),
      textStyleYearButton: TextStyle(
        fontSize: 0,
        color: Colors.white,
      ),
      textStyleDayHeader: TextStyle(
        fontSize: 14,
        color: kBlackColor,
      ),
      textStyleButtonNegative: TextStyle(
          fontSize: 0, color: Colors.white, fontWeight: FontWeight.bold),
      textStyleCurrentDayOnCalendar:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      textStyleMonthYearHeader: TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      paddingDatePicker: EdgeInsets.only(top: 12),
      paddingActionBar: EdgeInsets.only(right: 95, top: 0),
      colorArrowNext: kDarkBlueColor,
      colorArrowPrevious: kDarkBlueColor,
      textStyleButtonPositive: TextStyle(
        fontSize: 20,
        color: kWhiteColor,
        fontWeight: FontWeight.bold,
      ),
      decorationDateSelected:
          BoxDecoration(color: kIndigoColor, shape: BoxShape.circle),
      paddingDateYearHeader: EdgeInsets.all(0),
      paddingMonthHeader: EdgeInsets.all(0),
      backgroundActionBar: kIndigoColor,
      backgroundHeader: Color(0xff5165f8),
      sizeArrow: 20,
    );
