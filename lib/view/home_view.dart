import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/graph_view.dart';
import 'package:getx/view/history_view.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = GraphScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR WEIGHTS"),
        centerTitle: true,
      ),
      body: _currentScreen,
      floatingActionButton:
          FloatingActionButton(backgroundColor: Colors.black,onPressed: () {}, child: Icon(Icons.add)),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height/12, //ekranın %12'si. mediaquery yerine get bize yardımcı oluyor.
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.black,
        icons: [Icons.show_chart, Icons.history],iconSize: 30,
        activeIndex: _currentTab,
        onTap: (int) {
          setState(() {
            _currentTab=int;
            _currentScreen = (int ==0) ? GraphScreen() : HistoryScreen();
          });
        },
      ),
    );
  }
}
