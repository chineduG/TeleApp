//import 'package:flutter/material.dart';
//import 'package:flutter_tele/views/app.dart';
//import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
//
//class Timer extends StatefulWidget {
//  @override
//  _TimerState createState() => _TimerState();
//}
//
//class _TimerState extends State<Timer> {
//  @override
//  Widget build(BuildContext context) {
//    return SingleChildScrollView(
//      child: Column(
//        children: [
//          firstSide(),
//          FlutterToggleTab(
//            width: 90,
//            borderRadius: 30,
//            height: 50,
//            initialIndex: 0,
//            isScroll: false,
////            selectedColors: [Colors.blue],
//            selectedTextStyle: TextStyle(color: Colors.white, fontSize: 18),
//            unSelectedTextStyle: TextStyle(
//              color: Colors.blue,
//              fontSize: 18,
//            ),
//            labels: ["Appointments", "Availability"],
//            selectedLabelIndex: (index) {
//              print("Selected Index $");
//            },
//          ),
//          SizedBox(
//            height: 10,
//          ),
//          Container(
//            height: 285,
//            width: 370,
//            child: Card(
//              semanticContainer: true,
//              clipBehavior: Clip.antiAliasWithSaveLayer,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(10.0),
//              ),
//              color: Colors.white,
//              elevation: 2,
//              margin: EdgeInsets.all(10),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: [
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
////                crossAxisAlignment: CrossAxisAlignment.center,
//                    children: [],
//                  ),
//                  SizedBox(
//                    width: 30,
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
