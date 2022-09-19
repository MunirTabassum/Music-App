import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Screenss/FactorySettings/NowPlayingvastSettings.dart';
import 'package:music_app/widgets/widgets.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool seekButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'Now playing',
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10, top: 17),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 67,
                      ),
                      Text(
                        'style'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.deepPurpleAccent.shade200,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingNormalTile(
                    text: 'Select now playing style',
                    subtext: 'Choose now playing screenstyle',
                    icon: Icons.play_circle_outline_sharp,
                    onTap: () {
                      setState(() {
                        Get.bottomSheet(SelectNowPlayingSettings());
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingNormalTile(
                    text: 'Corner radius',
                    subtext: 'Select album cover corner radius',
                    icon: Icons.invert_colors_sharp,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 67,
                      ),
                      Text(
                        'Controls'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.deepPurpleAccent.shade200,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingToggleTile(
                    text: 'Enable seek buttons',
                    subtext:
                        'Replace skip buttons with seek buttons in now playing screen',
                    icon: Icons.timer,
                    currentTogglevalue: seekButton,
                    onToggle: (bool value) {
                      setState(() {
                        seekButton = value;
                      });
                    },
                  ),
                  SettingNormalTile(
                    text: 'Change seek duration',
                    subtext: 'Change the duration of seek buttons',
                    icon: Icons.play_arrow_rounded,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
