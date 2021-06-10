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
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildLightDesign(),
      appBar: AppBar(
        elevation: 0,
        foregroundColor: kBlackColor,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(tripSheetsAppBarTitle).textColor(kBlackColor),
      ),
      backgroundColor: kWhiteColor,
      body: Center(
        child: Text(''),
      ),
    );
  }

  Widget buildLightDesign() {
    return Container(
      height: 100,
      child: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: kBlueColor,
        strokeColor: kNavBarStrokeColor,
        unSelectedColor: kNavBarUnSelectedColor,
        backgroundColor: kWhiteColor,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text(bottomNavBarText[0])
                .textColor(
                    _currentIndex == 0 ? kBlueColor : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            title: Text(bottomNavBarText[1])
                .textColor(
                    _currentIndex == 1 ? kBlueColor : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            title: Text(bottomNavBarText[2])
                .textColor(
                    _currentIndex == 2 ? kBlueColor : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            title: Text(bottomNavBarText[3])
                .textColor(
                    _currentIndex == 3 ? kBlueColor : kNavBarUnSelectedColor)
                .fontSize(12)
                .paddingDirectional(vertical: 10),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            title: Text(bottomNavBarText[4])
                .textColor(
                    _currentIndex == 4 ? kBlueColor : kNavBarUnSelectedColor)
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