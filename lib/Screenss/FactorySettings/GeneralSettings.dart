import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Screenss/FactorySettings/FactorySettings.dart';
import 'package:music_app/widgets/NamesOfAppBars.dart';
import 'package:music_app/widgets/widgets.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  _GeneralSettingsState createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  bool mediaStore = false;
  bool rememberPlaylist = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: NamesOfAppBars(
          title: 'General',
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                          'Loader',
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
                      text: 'Select ignored folders',
                      subtext:
                          'Add or remove folders to execute tracks from showing in library',
                      icon: Icons.rule_folder,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SettingNormalTile(
                      text: 'Duration filter',
                      subtext: 'Filter tracks based on track duration',
                      icon: Icons.filter_alt_rounded,
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
                          'Artwork',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent.shade200,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SettingToggleTile(
                      text: 'Ignore media store artwork ',
                      subtext:
                          'Use the artwork embedded in the audio file.May take more time to load',
                      icon: Icons.music_note,
                      currentTogglevalue: mediaStore,
                      onToggle: (bool value) {
                        setState(() {
                          mediaStore = value;
                        });
                      },
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
                          'Others',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent.shade200,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SettingToggleTile(
                      text: 'Remember playlist',
                      subtext:
                          'Playlist will be remembered, enables you to continue where you left ',
                      icon: Icons.featured_play_list_rounded,
                      currentTogglevalue: rememberPlaylist,
                      onToggle: (bool value) {
                        setState(() {
                          rememberPlaylist = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SettingNormalTile(
                      text: 'Edit playlist section',
                      subtext:
                          'Select which playlist to show in the home screen',
                      icon: Icons.category,
                      onTap: () {
                        setState(() {
                          Get.bottomSheet(
                            EditPlaylistBottomSheet(),
                          );
                        });
                        // setState(() {
                        //   Get.to(() => EditPlaylistSettings());
                        // });
                      },
                    ),
                    SettingNormalTile(
                      text: 'Select default lab',
                      subtext:
                          'Choose the tab to show when pulse music is started',
                      icon: Icons.folder_open,
                      onTap: () {
                        setState(() {
                          Get.bottomSheet(
                            SelectDefaultTab(),
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
