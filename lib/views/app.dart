import 'package:flutter/material.dart';
import 'package:flutter_tele/views/past.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool colorClicked = true;

  final String message = 'Home';
  final String appoint = 'Appointment';
  final String details = 'Details';
  final String person = 'Person';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              firstSide(),
              FlutterToggleTab(
                width: 90,
                borderRadius: 30,
                height: 50,
                initialIndex: 0,
                isScroll: false,
//            selectedColors: [Colors.blue],
                selectedTextStyle: TextStyle(color: Colors.white, fontSize: 18),
                unSelectedTextStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
                labels: ["Appointments", "Availability"],
                selectedLabelIndex: (index) {
                  print("Selected Index $index");
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Text(
                      'Upcoming Appointments',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:
                              colorClicked ? Colors.blue : Colors.transparent),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(Past());
                    },
                    child: Text(
                      'Past Appointments',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              secondSide(),
              secondSide(),
              secondSide(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.red,
          currentIndex: 1, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Color(0xffabdaff),
              ),
              label: message,
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                color: Color(0xff008eff),
              ),
              label: appoint,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_to_photos_sharp,
                color: Color(0xffabdaff),
              ),
              label: details,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Color(0xffabdaff),
              ),
              label: details,
            )
          ]),
    ));
  }
}

Widget firstSide() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 35,
        height: 90,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 1.50),
            shape: BoxShape.circle,
            color: Colors.white12),
        margin: EdgeInsets.only(left: 4),
        padding: EdgeInsets.only(right: 20, left: 8),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
      ),
      Text(
        'Appointments',
        style: TextStyle(
            color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Image.asset(
        "assets/icons/calender.png",
        width: 50,
        height: 40,
      ),
    ],
  );
}

Widget secondSide() {
  return Column(
    children: [
      Text(
        'Today, Feb 11th',
        style: TextStyle(color: Colors.grey),
      ),
      Container(
        height: 285,
        width: 370,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color(0xfff2fafc),
          elevation: 2,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
//                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  card(),
                  infoClient(),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
//                  SizedBox(
//                    height: 50,
//                  ),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: Icon(Icons.assignment_rounded),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: Icon(Icons.add_ic_call),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: Icon(Icons.add_a_photo),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget infoClient() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Micheal Martins',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10,
          ),
          Text('Category: Eye, Others'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Complaints',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('and Lorem Lorem Lorem Lorem Lorem Whahala',
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.black54)),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 5),
          Text(
            '08:30AM- 09:30AM',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    ),
  );
}

Widget card() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      alignment: Alignment.center,
      height: 90,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffff9e82),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Feb',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text('18',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}
