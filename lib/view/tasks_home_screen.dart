import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:ui_napses_assignment/constants/constants.dart';
import 'package:ui_napses_assignment/widgets/widgets.dart';
import '../constants/globals.dart';

class TasksHomeScreen extends StatefulWidget {
  @override
  _TasksHomeScreenState createState() => _TasksHomeScreenState();
}

class _TasksHomeScreenState extends State<TasksHomeScreen> {
  int _currentIndex = 0;
  String _dropDownValue = 'All';
  List<String> _dropDownValues = ['All', 'All Agents']; // Option 2
  String _dropDownValue2 = 'All Agents';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: lightDesignBottomNavigationBar,
      appBar: AppBar(
        toolbarHeight: 80,
        actions: appBarActions,
        leading: appBarLeadingWidget,
        elevation: 0,
        foregroundColor: kBlackColor,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(tripSheetsAppBarTitle).fontSize(25).textColor(kBlackColor),
      ),
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: kLightGrey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Delivery Date').padding(left: 25),
                          Text(
                            '27/05/2021',
                          )
                              .fontSize(18)
                              .fontWeight(FontWeight.bold)
                              .padding(left: 25),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        color: kLightGrey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tripsheet Status').padding(left: 25),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              iconSize: 30,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kBlackColor,
                              ),
                              iconEnabledColor: kDarkBlueColor,
                              underline: SizedBox(),
                              icon: Icon(Icons.keyboard_arrow_down_outlined),
                              value: _dropDownValue ?? Text('All'),
                              onChanged: (newValue) {
                                setState(
                                      () {
                                    _dropDownValue = newValue;
                                  },
                                );
                              },
                              items: _dropDownValues.map(
                                    (value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                },
                              ).toList(),
                            ).padding(horizontal: 26),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: kLightGrey,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Select Agent').padding(left: 10),
                    DropdownButton(
                      iconSize: 30,
                      isExpanded: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                      iconEnabledColor: kDarkBlueColor,
                      underline: SizedBox(),
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                      value: _dropDownValue2,
                      onChanged: (newValue) {
                        setState(
                              () {
                            _dropDownValue2 = newValue;
                          },
                        );
                      },
                      items: _dropDownValues.map(
                            (value) {
                          return DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        },
                      ).toList(),
                    ).padding(horizontal: 12),
                  ],
                ),
              ).paddingDirectional(vertical: 20),
              Column(
                children: List.generate(
                  5,
                      (index) => customListTile(requiredListTilesFields[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get lightDesignBottomNavigationBar =>
      Container(
        height: 100,
        child: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: kDarkBlueColor,
          strokeColor: kNavBarStrokeColor,
          unSelectedColor: kNavBarUnSelectedColor,
          backgroundColor: kWhiteColor,
          items: List.generate(
            5,
                (index) =>
                customNavBar(
                  customNavBarFields[index],
                  index,
                  _currentIndex,
                ),
          ),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(
                  () {
                _currentIndex = index;
              },
            );
          },
        ),
      );
}
