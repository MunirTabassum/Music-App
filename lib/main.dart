// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Screenss/Screenss.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(() => MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          scrollbarTheme: ScrollbarThemeData(
            showTrackOnHover: true,
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.grey),
            radius: Radius.circular(10),
            minThumbLength: 50,
          )),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
