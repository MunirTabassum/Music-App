import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/widgets/TilesTypes.dart';

class SelectNowPlayingSettings extends StatefulWidget {
  const SelectNowPlayingSettings({Key? key}) : super(key: key);

  @override
  _NowPlayingvastSettingsState createState() => _NowPlayingvastSettingsState();
}

class _NowPlayingvastSettingsState extends State<SelectNowPlayingSettings> {
  bool Modern = false;
  bool Stylish = false;
  bool edge = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BottomSheet(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 25, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Text(
                      'Select now playing style ',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent.shade400,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TitleLeadingIconTile(
                    text: 'Modern',
                    currentTogglevalue: Modern,
                    onToggle: (bool value) {
                      setState(() {
                        Modern = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TitleLeadingIconTile(
                    text: 'Stylish',
                    currentTogglevalue: Stylish,
                    onToggle: (bool value) {
                      setState(() {
                        Stylish = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TitleLeadingIconTile(
                    text: 'Edge to edge',
                    currentTogglevalue: edge,
                    onToggle: (bool value) {
                      setState(() {
                        edge = value;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent.shade200,
                              fontSize: 18),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Set',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade200,
                                fontSize: 18),
                          ))
                    ],
                  )
                ],
              ),
            ),
          );
        },
        onClosing: () {},
      ),
    );
  }
}
