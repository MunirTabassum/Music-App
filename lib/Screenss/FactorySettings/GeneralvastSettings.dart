import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/widgets/TilesTypes.dart';

class EditPlaylistBottomSheet extends StatefulWidget {
  const EditPlaylistBottomSheet({Key? key}) : super(key: key);

  @override
  _EditPlaylistBottomSheetState createState() =>
      _EditPlaylistBottomSheetState();
}

class _EditPlaylistBottomSheetState extends State<EditPlaylistBottomSheet> {
  bool TopAlbums = false;
  bool ForYou = false;
  bool Rediscover = false;
  bool Newinstore = false;
  bool TopArtist = false;

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
            height: 720,
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
                      'Toggle playlist section',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent.shade400,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TitleIconTile(
                    text: 'Top albums',
                    currentTogglevalue: TopAlbums,
                    onToggle: (bool value) {
                      setState(() {
                        TopAlbums = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  TitleIconTile(
                    text: 'For you',
                    currentTogglevalue: ForYou,
                    onToggle: (bool value) {
                      setState(() {
                        ForYou = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  TitleIconTile(
                    text: 'Rediscover',
                    currentTogglevalue: Rediscover,
                    onToggle: (bool value) {
                      setState(() {
                        Rediscover = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TitleIconTile(
                    text: 'New in store',
                    currentTogglevalue: Newinstore,
                    onToggle: (bool value) {
                      setState(() {
                        Newinstore = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  TitleIconTile(
                    text: 'Top artists',
                    currentTogglevalue: TopArtist,
                    onToggle: (bool value) {
                      setState(() {
                        TopArtist = value;
                      });
                    },
                  ),
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

class SelectDefaultTab extends StatefulWidget {
  const SelectDefaultTab({Key? key}) : super(key: key);

  @override
  _SelectDefaultTabState createState() => _SelectDefaultTabState();
}

class _SelectDefaultTabState extends State<SelectDefaultTab> {
  bool Home = false;
  bool Library = false;
  bool Albums = false;
  bool Artists = false;
  bool Playlist = false;
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
            height: 720,
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
                      'Select default tab',
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
                    text: 'Home',
                    currentTogglevalue: Home,
                    onToggle: (bool value) {
                      setState(() {
                        Home = value;
                      });
                    },
                  ),
                  // SizedBox(
                  //   height: 9,
                  // ),
                  TitleLeadingIconTile(
                    text: 'Library',
                    currentTogglevalue: Library,
                    onToggle: (bool value) {
                      setState(() {
                        Library = value;
                      });
                    },
                  ),
                  // SizedBox(
                  //   height: 9,
                  // ),
                  TitleLeadingIconTile(
                    text: 'Albums',
                    currentTogglevalue: Albums,
                    onToggle: (bool value) {
                      setState(() {
                        Albums = value;
                      });
                    },
                  ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  TitleLeadingIconTile(
                    text: 'Artists',
                    currentTogglevalue: Artists,
                    onToggle: (bool value) {
                      setState(() {
                        Artists = value;
                      });
                    },
                  ),
                  // SizedBox(
                  //   height: 9,
                  // ),
                  TitleLeadingIconTile(
                    text: 'Playlist',
                    currentTogglevalue: Playlist,
                    onToggle: (bool value) {
                      setState(() {
                        Playlist = value;
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
    ;
  }
}
