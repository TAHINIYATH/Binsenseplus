import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:loginsingup/screens/home.dart';
import 'package:loginsingup/screens/level.dart';
import 'package:loginsingup/screens/message.dart';
import 'package:loginsingup/screens/truck.dart';
import 'package:loginsingup/utils/colors_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = const [
    Icon(
      Icons.home,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.bar_chart,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.message_rounded,
      color: Colors.black,
      size: 30,
    ),
    Icon(
      Icons.fire_truck_rounded,
      color: Colors.black,
      size: 30,
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Center(
          child: const Text('BinSense(+)',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: hexStringToColor("#01F9C6"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 50.0,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 350),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.teal.shade500,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Intro();
        break;
      case 1:
        widget = const Level();
        break;
      case 2:
        widget = const Message();
      case 3:
        widget = const Truck();
      default:
        widget = const Intro();
        break;
    }
    return widget;
  }
}
