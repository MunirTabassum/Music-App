import 'package:flutter/material.dart';
import 'package:music_app/widgets/widgets.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';

class AudioSettings extends StatefulWidget {
  const AudioSettings({Key? key}) : super(key: key);

  @override
  _AudioSettingsState createState() => _AudioSettingsState();
}

class _AudioSettingsState extends State<AudioSettings> {
  bool autoBluetooth = false;
  bool enableSleep = false;
  bool sleepTimer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'Audio',
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
                        'AutoPlay'.toUpperCase(),
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
                  SettingToggleTile(
                    text: 'Bluetooth auto play',
                    subtext:
                        'Start playing music when a bluetooth device connects',
                    icon: Icons.bluetooth_connected,
                    currentTogglevalue: autoBluetooth,
                    onToggle: (bool value) {
                      setState(() {
                        autoBluetooth = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingNormalTile(
                    text: 'Select bluetooth auto playaction',
                    subtext:
                        'Choose which playlist to play when a bluetooth device connects',
                    icon: Icons.play_circle_outline,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingNormalTile(
                    text: 'Select tile action',
                    subtext: 'Choose which playlist to play using OS tile',
                    icon: Icons.play_circle_outline,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
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
                        'Sleep timer'.toUpperCase(),
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
                    text: 'Enable Sleep Timer',
                    subtext:
                        'Make accent color desaturated when dark theme is applied',
                    icon: Icons.timer,
                    currentTogglevalue: enableSleep,
                    onToggle: (bool value) {
                      setState(() {
                        enableSleep = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SettingNormalTile(
                      text: 'Select timer duration',
                      subtext: 'Choose the duration for sleep timer',
                      icon: Icons.timer),
                  SettingToggleTile(
                    text: 'Repeat sleep timer',
                    subtext:
                        'Start the sleep timer automatically for the next playback session',
                    icon: Icons.settings_backup_restore_outlined,
                    currentTogglevalue: sleepTimer,
                    onToggle: (bool value) {
                      setState(() {
                        sleepTimer = value;
                      });
                    },
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
