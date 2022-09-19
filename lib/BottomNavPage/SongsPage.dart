import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/MusicController/MusicController.dart';
import 'package:music_app/Screenss/MainScreenState.dart';
import 'package:we_slide/we_slide.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  final Directory internalStorageDirectory = Directory('/storage/emulated/0/');
  bool isPlaying = false;
  late final List<FileSystemEntity> songs;
  final audioPlayer = AudioPlayer();

  List<FileSystemEntity> fetchAllSystemFiles() {
    return internalStorageDirectory.listSync(
        recursive: true, followLinks: true);
  }

  List<FileSystemEntity> fetchFilesOfType({String extension = '.mp3'}) {
    List<FileSystemEntity> _files = [];

    for (FileSystemEntity entity in fetchAllSystemFiles()) {
      String path = entity.path;
      if (path.endsWith(extension)) _files.add(entity);
    }
    return _files;
  }

  @override
  void initState() {
    super.initState();
    this.songs = this.fetchFilesOfType(extension: '.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      height: Get.height,
      child: Scrollbar(
        thickness: 10,
        showTrackOnHover: true,
        radius: Radius.circular(5),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              {
                var song = songs.elementAt(index);
                var songName =
                    song.path.substring(song.path.lastIndexOf('/') + 1);
                return ListTile(
                  onTap: () async {
                    var controller = Get.find<MusicController>();
                    controller.selectNewSong();
                    controller.playNewSong(songName, song.path);

                    // if (isPlaying) {
                    //   audioPlayer.stop();
                    // } else {
                    //   audioPlayer.play();
                    // }
                    // this.setState(() {
                    //   this.isPlaying = !isPlaying;
                    // });
                  },
                  title: Row(
                    children: [
                      Text(
                        songName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Text('<unknown>'),
                  trailing: Container(
                      width: 10,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.white),
                      // color: Colors.red,
                      child: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.grey.shade700,
                      )),
                  leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.deepPurple),
                      // color: Colors.red,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      )),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
////
