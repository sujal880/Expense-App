import 'package:expense_app/screens/total_amt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import 'addamt.dart';
import 'chart.dart';
class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<Bottom> {
  int currentIndex = 0;
  List<IconData> navigationIcons = [Icons.add,Icons.currency_rupee, Icons.add_chart];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context,child){
      return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            AddAmt(),
            TotalAmt(),
            Chart(),
        ]),

        bottomNavigationBar: MotionTabBar(
          initialSelectedTab: "Total",
          labels: const ["Add", "Total", "Chart"],
          icons: navigationIcons,
          tabSize: 45,
          tabBarHeight: 60,
          textStyle: const TextStyle(
            fontSize: 13.5,
            color: Colors.black,
            decorationColor: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: Colors.orangeAccent,
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.orangeAccent,
          tabIconSelectedColor: Colors.white,
          tabBarColor: Colors.white,
          onTabItemSelected: (int value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      );
    });
  }
}