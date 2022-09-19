import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/widgets/TilesTypes.dart';

class DarkThemeSettings extends StatefulWidget {
  const DarkThemeSettings({Key? key}) : super(key: key);

  @override
  _DarkThemeSettingsState createState() => _DarkThemeSettingsState();
}

class _DarkThemeSettingsState extends State<DarkThemeSettings> {
  bool Gray = false;
  bool Signature = false;
  bool Lights = false;
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
                      'Set preffered dark theme ',
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
                    text: 'Just Gray',
                    currentTogglevalue: Gray,
                    onToggle: (bool value) {
                      setState(() {
                        Gray = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TitleLeadingIconTile(
                    text: 'Signature dark',
                    currentTogglevalue: Signature,
                    onToggle: (bool value) {
                      setState(() {
                        Signature = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TitleLeadingIconTile(
                    text: 'Lights Out',
                    currentTogglevalue: Lights,
                    onToggle: (bool value) {
                      setState(() {
                        Lights = value;
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

// class SelectDefaultTab extends StatefulWidget {
//   const SelectDefaultTab({Key? key}) : super(key: key);
//
//   @override
//   _SelectDefaultTabState createState() => _SelectDefaultTabState();
// }
//
// class _SelectDefaultTabState extends State<SelectDefaultTab> {
//   bool Home = false;
//   bool Library = false;
//   bool Albums = false;
//   bool Artists = false;
//   bool Playlist = false;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: BottomSheet(
//         clipBehavior: Clip.antiAlias,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(20),
//           ),
//         ),
//         builder: (context) {
//           return Container(
//             height: 720,
//             width: double.infinity,
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 40.0, left: 25, right: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 11.0),
//                     child: Text(
//                       'Select default tab',
//                       style: TextStyle(
//                         color: Colors.deepPurpleAccent.shade400,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   TitleLeadingIconTile(
//                     text: 'Home',
//                     currentTogglevalue: Home,
//                     onToggle: (bool value) {
//                       setState(() {
//                         Home = value;
//                       });
//                     },
//                   ),
//                   // SizedBox(
//                   //   height: 9,
//                   // ),
//                   TitleLeadingIconTile(
//                     text: 'Library',
//                     currentTogglevalue: Library,
//                     onToggle: (bool value) {
//                       setState(() {
//                         Library = value;
//                       });
//                     },
//                   ),
//                   // SizedBox(
//                   //   height: 9,
//                   // ),
//                   TitleLeadingIconTile(
//                     text: 'Albums',
//                     currentTogglevalue: Albums,
//                     onToggle: (bool value) {
//                       setState(() {
//                         Albums = value;
//                       });
//                     },
//                   ),
//                   // SizedBox(
//                   //   height: 4,
//                   // ),
//                   TitleLeadingIconTile(
//                     text: 'Artists',
//                     currentTogglevalue: Artists,
//                     onToggle: (bool value) {
//                       setState(() {
//                         Artists = value;
//                       });
//                     },
//                   ),
//                   // SizedBox(
//                   //   height: 9,
//                   // ),
//                   TitleLeadingIconTile(
//                     text: 'Playlist',
//                     currentTogglevalue: Playlist,
//                     onToggle: (bool value) {
//                       setState(() {
//                         Playlist = value;
//                       });
//                     },
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         child: Text(
//                           'Cancel',
//                           style: TextStyle(
//                               color: Colors.deepPurpleAccent.shade200,
//                               fontSize: 18),
//                         ),
//                       ),
//                       TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Set',
//                             style: TextStyle(
//                                 color: Colors.deepPurpleAccent.shade200,
//                                 fontSize: 18),
//                           ))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//         onClosing: () {},
//       ),
//     );
//     ;
//   }
// }
