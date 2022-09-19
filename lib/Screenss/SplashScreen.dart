import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Screenss/MainScreenState.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void requestStoragePermission() async {
    await Permission.storage.request();
    if (await Permission.storage.isGranted) {
      Get.to(() => MainScreen());
    } else {
      Get.snackbar('PERMISSION STORAGE', 'Allow this');
    }
  }

  @override
  Widget build(BuildContext context) {
    requestStoragePermission();
    return Material(
      child: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
