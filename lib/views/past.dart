import 'package:flutter/material.dart';
import 'package:flutter_tele/views/app.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';

class Past extends StatefulWidget {
  @override
  _PastState createState() => _PastState();
}

class _PastState extends State<Past> {
  bool colorClicked = true;
  int _value = 1;
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
                  selectedTextStyle:
                      TextStyle(color: Colors.white, fontSize: 18),
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
                      onTap: () {
                        Get.off(App());
                      },
                      child: Text(
                        'Upcoming Appointments',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colorClicked ? Colors.black12 : Colors.blue),
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'Past Appointments',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colorClicked ? Colors.blue : Colors.black38),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sort by: ',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    DropdownButton(
                        icon: Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.black38,
                        ),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.black26),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Dates",
                                style: TextStyle(color: Colors.black26)),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: Text("Z - A",
                                  style: TextStyle(color: Colors.black26)),
                              value: 3),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ],
                ),
                secondSide(),
//                secondSide(),
//                secondSide(),
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
      ),
    );
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
//      Text(
//        'Today, Feb 11th',
//        style: TextStyle(color: Colors.grey),
//      ),
      Container(
        height: 285,
        width: 370,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color(0xffe6f6fa),
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
          Text('Samuel Leone',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10,
          ),
          Text('Category: Ear, Others'),
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
            '10:30AM- 12:30PM',
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
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffc0c5f0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dec',
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
