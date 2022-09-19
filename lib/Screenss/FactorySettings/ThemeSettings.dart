import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Screenss/FactorySettings/ThemevastSettings.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';
import 'package:music_app/widgets/widgets.dart';

class ThemeSettings extends StatefulWidget {
  ThemeSettings({
    Key? key,
  }) : super(key: key);

  @override
  _ThemeSettingsState createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  bool darkMode = false;
  bool systemTheme = false;
  bool accentColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'Theme',
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
                        'Theme',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent.shade200,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingNormalTile(
                    text: 'Select dark theme',
                    subtext:
                        'Choose the dark theme to use when dark mode is enabled',
                    icon: Icons.color_lens_outlined,
                    onTap: () {
                      setState(() {
                        Get.bottomSheet(
                          DarkThemeSettings(),
                        );
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingToggleTile(
                    text: 'Turn on dark mode',
                    subtext: 'Instantly enabled preffered dark theme',
                    icon: Icons.access_time_outlined,
                    currentTogglevalue: darkMode,
                    onToggle: (bool value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingToggleTile(
                    text: 'Follow system theme',
                    subtext:
                        'Sets light and preffered dark theme based on system theme',
                    icon: Icons.nightlight_round,
                    currentTogglevalue: systemTheme,
                    onToggle: (bool value) {
                      setState(() {
                        systemTheme = value;
                      });
                    },
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
                        'Colors',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent.shade200,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingToggleTile(
                    text: 'Soften accent color',
                    subtext:
                        'Make accent color desaturated when dark theme is applied',
                    icon: Icons.invert_colors,
                    currentTogglevalue: accentColor,
                    onToggle: (bool value) {
                      setState(() {
                        accentColor = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SettingNormalTile(
                    text: 'Pick accent color',
                    subtext: 'Select accent colors to apply',
                    icon: Icons.search,
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
