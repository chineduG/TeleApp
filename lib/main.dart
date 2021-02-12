import 'package:flutter/material.dart';
import 'package:flutter_tele/views/app.dart';
import 'package:flutter_tele/views/available.dart';
import 'package:get/get.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
