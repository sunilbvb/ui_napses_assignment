import 'package:flutter/material.dart';

import 'constants/globals.dart';
import 'view/tasks_home_screen.dart';

void main() {
  runApp(NapsesUIApp());
}

class NapsesUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Napses UI assignment',
      theme: ThemeData(
        primarySwatch: kBlueColor,
      ),
      debugShowCheckedModeBanner: false,
      home: TasksHomeScreen(),
    );
  }
}
