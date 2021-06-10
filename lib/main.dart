import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import 'constants/globals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Napses UI assignment',
      theme: ThemeData(
        primarySwatch: kBlueColor,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  String _dropDownValue = 'All';
  List<String> _dropDownValues = ['All']; // Option 2
  // String _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildLightDesign(),
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            icon: Icon(Icons.add).iconColor(kBlackColor).iconSize(30),
            onPressed: () => null,
          ),
        ],
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: kGreyColor, width: 1),
          ),
          child: IconButton(
            icon: Icon(Icons.menu).iconColor(kBlackColor),
            onPressed: () => null,
          ),
        ),
        elevation: 0,
        foregroundColor: kBlackColor,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(tripSheetsAppBarTitle).fontSize(25).textColor(kBlackColor),
      ),
      backgroundColor: kWhiteColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(
              color: kLightGrey,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Delivery Date'),
                Text(
                  '27/05/2021',
                ).fontSize(20).fontWeight(FontWeight.bold),
              ],
            ),
          ),
          Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(
              color: kLightGrey,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Tripsheet Status'),
/*                Text('All')
                    .fontSize(20)
                    .fontWeight(FontWeight.bold)
                    .alignment(AlignmentDirectional.centerStart)
                    .padding(left: 25),*/
                Container(
                  width: 100,
                  padding: EdgeInsets.only(bottom: 10,),
                  child: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                    iconEnabledColor: Colors.redAccent,
                    underline: SizedBox(),
                    icon: Icon(Icons.arrow_drop_down),
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLightDesign() {
    return Container(
      height: 100,
      child: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: kDarkBlueColor,
        strokeColor: kNavBarStrokeColor,
        unSelectedColor: kNavBarUnSelectedColor,
        backgroundColor: kWhiteColor,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text(bottomNavBarText[0])
                .textColor(_currentIndex == 0
                    ? kDarkBlueColor
                    : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            title: Text(bottomNavBarText[1])
                .textColor(_currentIndex == 1
                    ? kDarkBlueColor
                    : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            title: Text(bottomNavBarText[2])
                .textColor(_currentIndex == 2
                    ? kDarkBlueColor
                    : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            title: Text(bottomNavBarText[3])
                .textColor(_currentIndex == 3
                    ? kDarkBlueColor
                    : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            title: Text(bottomNavBarText[4])
                .textColor(_currentIndex == 4
                    ? kDarkBlueColor
                    : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
        ],
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
}
