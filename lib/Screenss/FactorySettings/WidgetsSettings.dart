import 'package:flutter/material.dart';
import 'package:music_app/widgets/widgets.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';

class WidgetsSettings extends StatelessWidget {
  const WidgetsSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'Widgets',
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
                    text: 'Background alpha',
                    subtext: 'Adjust alpha value of widgets background',
                    icon: Icons.invert_colors_sharp,
                  ),
                  SizedBox(
                    height: 25,
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
                        'action'.toUpperCase(),
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
                  SettingNormalTile(
                    text: 'Action on play',
                    subtext:
                        'Choose the action to perform when clicked on widgets play button',
                    icon: Icons.timer,
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
