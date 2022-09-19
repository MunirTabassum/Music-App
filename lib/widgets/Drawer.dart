// import 'package:flutter/material.dart';
// import 'package:music_app/DrawerScreens/DrawerScreens.dart';
//
// class AppDrawer extends StatelessWidget {
//   const AppDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//      return
//     // Drawer(
//     //     child: SingleChildScrollView(
//     //   child: Column(
//     //     children: [
//     //       Container(
//     //         decoration: BoxDecoration(
//     //             borderRadius:
//     //                 BorderRadius.horizontal(right: Radius.circular(500))),
//     //         width: double.infinity,
//     //         height: 180,
//     //       ),
//     //       Container(
//     //         padding: EdgeInsets.only(right: 12.0),
//     //         child: Column(
//     //           children: [
//     //             Tiles(
//     //               title: 'Library',
//     //               icon: Icons.library_music_outlined,
//     //               selected: true,
//     //               onTap: () {
//     //                 Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                         builder: (context) => LibraryScreen()));
//     //               },
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'Folders',
//     //               icon: Icons.folder_open,
//     //               selected: false,
//     //               onTap: () {
//     //                 Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                         builder: (context) => FolderScreen()));
//     //               },
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'Playing Queue',
//     //               icon: Icons.playlist_play,
//     //               selected: false,
//     //               onTap: () {
//     //                 Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                         builder: (context) => PlayingScreen()));
//     //               },
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'Equalizer',
//     //               icon: Icons.equalizer_outlined,
//     //               selected: false,
//     //               onTap: () {
//     //                 Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                         builder: (context) => EqualizerScreen()));
//     //               },
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'Scan Media',
//     //               icon: Icons.scanner_outlined,
//     //               selected: false,
//     //               onTap: () {
//     //                 // Navigator.push(context,
//     //                 //     MaterialPageRoute(builder: (context) => ScanScreen()));
//     //               },
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'Setting',
//     //               icon: Icons.settings,
//     //               selected: false,
//     //               onTap: () {
//     //                 // Navigator.push(
//     //                 //     context,
//     //                     // MaterialPageRoute(
//     //                         // builder: (context) => SettingScreen()));
//     //               },
//     //             ),
//     //             Divider(
//     //               color: Colors.black,
//     //             ),
//     //             SizedBox(
//     //               height: 5.0,
//     //             ),
//     //             Tiles(
//     //               title: 'About',
//     //               icon: Icons.info_outline,
//     //               selected: false,
//     //               onTap: () {
//     //               //   Navigator.push(context,
//     //               //       MaterialPageRoute(builder: (context) => AboutScreen()));
//     //               // },
//     //             // ),
//     //           // ],
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // ));
//   // }
// }
//
// // class Tiles extends StatelessWidget {
// //   Tiles({Key? key, this.title, this.icon, this.onTap, this.selected})
// //       : super(key: key);
// //   final title;
// //   final icon;
// //   final selected;
// //   final void Function()? onTap;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: ListTile(
// //         onTap: onTap,
// //         title: Text(
// //           this.title,
// //           style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
// //         ),
// //         leading: Icon(this.icon),
// //         selectedTileColor: Colors.lightBlue.shade100,
// //         selected: this.selected,
// //         shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.only(
// //                 topRight: Radius.circular(20),
// //                 bottomRight: Radius.circular(20))),
// //       ),
// //     );
// //   }
// // }
