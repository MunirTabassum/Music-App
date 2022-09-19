import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Screenss/FactorySettings/AboutSettings.dart';
import 'package:music_app/Screenss/FactorySettings/NowPlaying.dart';
import 'package:music_app/Screenss/FactorySettings/SupportDevelopmentsSettings.dart';
import 'package:music_app/Screenss/FactorySettings/WidgetsSettings.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';
import 'FactorySettings/FactorySettings.dart';

class FactoryScreen extends StatelessWidget {
  const FactoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: NamesOfAppBars(
          title: 'Settings',
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('General'),
            subtitle: Text('Configure basic setting'),
            leading: CircleAvatar(
              child: Icon(Icons.settings),
              foregroundColor: Colors.red,
              backgroundColor: Colors.red.shade50,
            ),
            onTap: () {
              Get.to(() => GeneralSettings());
            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text('Change the look and feel of the app'),
            leading: CircleAvatar(
              child: Icon(Icons.color_lens_outlined),
              foregroundColor: Colors.green,
              backgroundColor: Colors.green.shade50,
            ),
            onTap: () {
              Get.to(() => ThemeSettings());
            },
          ),
          ListTile(
            title: Text('Now playing'),
            subtitle: Text('customize now playing screen'),
            leading: CircleAvatar(
              child: Icon(Icons.play_circle_outlined),
              foregroundColor: Colors.blue,
              backgroundColor: Colors.blue.shade50,
            ),
            onTap: () {
              Get.to(() => NowPlaying());
            },
          ),
          ListTile(
            title: Text('Audio'),
            subtitle: Text('Change audio settings'),
            leading: CircleAvatar(
              child: Icon(Icons.music_note),
              foregroundColor: Colors.red,
              backgroundColor: Colors.red.shade50,
            ),
            onTap: () {
              Get.to(() => AudioSettings());
            },
          ),
          ListTile(
            title: Text('Widgets'),
            subtitle: Text('Customize widgets and actions'),
            leading: CircleAvatar(
              child: Icon(Icons.widgets),
              foregroundColor: Colors.greenAccent.shade700,
              backgroundColor: Colors.teal.shade50,
            ),
            onTap: () {
              Get.to(() => WidgetsSettings());
            },
          ),
          ListTile(
            title: Text('Support Developement'),
            subtitle: Text('Donate a small amount to support the developer'),
            leading: CircleAvatar(
              child: Icon(Icons.attach_money_outlined),
              foregroundColor: Colors.amber,
              backgroundColor: Colors.amber.shade50,
            ),
            onTap: () {
              Get.to(() => SupportDeveleopmentSettings());
            },
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text('About this app '),
            leading: CircleAvatar(
              child: Icon(Icons.info_outlined),
              foregroundColor: Colors.purple,
              backgroundColor: Colors.purple.shade50,
            ),
            onTap: () {
              Get.to(() => AboutSettings());
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      // body: CustomScrollView(slivers: [
      //   SliverAppBar(
      //
      //     title: Center(
      //       child: RichText(
      //         text: TextSpan(
      //           text: 'H',
      //
      //           children: <TextSpan>[
      //             TextSpan(
      //               text: 'ome',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.black,
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
    );
  }
}
