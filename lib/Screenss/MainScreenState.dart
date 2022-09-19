import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:marquee/marquee.dart';
import 'package:music_app/BottomNavPage/BottomNavPage.dart';
import 'package:music_app/MusicController/MusicController.dart';
import 'package:music_app/Screenss/SearchScreen.dart';
import 'package:music_app/widgets/debounce.dart';
import 'package:music_app/widgets/widgets.dart';
import 'package:we_slide/we_slide.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current_Index = 0;
  Debouncer seekDebouncer = Debouncer(milliseconds: 0);
  var pages = [
    HomePage(),
    AlbumPage(),
    SongPage(),
    PlaylistPage(),
    ArtistPage(),
  ];
  var currentMusic = Get.put<MusicController>(
    MusicController(),
    permanent: true,
  );

  final WeSlideController _controller = WeSlideController();

  @override
  Widget build(BuildContext context) {
    final double _panelMinSize = 127.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<MusicController>(
          builder: (controller) {
            return WeSlide(
              controller: _controller,
              overlayOpacity: 0.9,
              overlay: true,
              isDismissible: true,
              backgroundColor: Colors.white,
              panelMinSize: controller.isSongSelected ? _panelMinSize : 0.0,
              panelMaxSize: _panelMaxSize,
              footer: false
                  ? Container()
                  : AppBottomBar(
                      onTap: (index) {
                        this.setState(() {
                          current_Index = index;
                        });
                      },
                      current_Index: current_Index,
                    ),
              parallax: true,
              hideFooter: true,
              panel: !controller.isSongSelected
                  ? Container()
                  : Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          _controller.hide();
                                        },
                                        icon: Icon(Icons.keyboard_arrow_down)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 59.0),
                                      child: Text(
                                        'Now Playing',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Icon(Icons.favorite_border),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.menu)),
                                  ],
                                ),
                                Container(
                                  height: 350,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Colors.grey.shade200,
                                    color: Colors.teal,
                                  ),
                                  child: Icon(
                                    Icons.music_note_outlined,
                                    size: 150,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(controller.currentMusic == null
                              ? ''
                              : controller.currentMusic!.title),
                          StreamBuilder<Duration>(
                              stream: controller.audioPlayer.positionStream,
                              builder: (context, snapshot) {
                                print('Duration: ${snapshot.data!.inSeconds}');
                                return Slider(
                                  activeColor: Colors.teal,
                                  min: 0,
                                  max: (controller.currentMusic != null
                                          ? controller
                                              .currentMusic!.duration.inSeconds
                                          : 0)
                                      .toDouble(),
                                  value: controller.currentPositionOfSong
                                      .toDouble(),
                                  onChanged: (value) {
                                    seekDebouncer.run(() {
                                      controller.currentPositionOfSong =
                                          value.toInt();
                                    });
                                  },
                                );
                              }),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(controller.currentSongCurrentTime),
                                Text(controller.currentSongMaximumTime),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.repeat),
                                  iconSize: 30,
                                ),
                                IconButton(
                                  icon: Icon(Icons.volume_up),
                                  onPressed: () {
                                    print('sdhjfdsghjf');
                                    showSliderDialog(
                                      context: context,
                                      title: "Adjust volume",
                                      divisions: 10,
                                      min: 0.0,
                                      max: 1.0,
                                      value: controller.audioPlayer.volume,
                                      stream:
                                          controller.audioPlayer.volumeStream,
                                      onChanged:
                                          controller.audioPlayer.setVolume,
                                    );
                                  },
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.skip_previous),
                                  iconSize: 30,
                                ),
                                IconButton(
                                    onPressed: controller.onPlayPausePressed,
                                    icon: Icon(controller.isMusicPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow),
                                    iconSize: 30),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_next),
                                    iconSize: 30),
                                IconButton(
                                    onPressed: () async {
                                      var player;
                                      // await player.setLoopMode(LoopMode.off); // no looping (default)
                                      // await player.setLoopMode(LoopMode.all); // loop playlist
                                      // await player.setLoopMode(
                                      //     LoopMode.one); // loop current item
                                      // await player.setShuffleModeEnabled(true);
                                    },
                                    icon: Icon(Icons.shuffle),
                                    iconSize: 30),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              panelHeader: !controller.isSongSelected
                  ? Container()
                  : GestureDetector(
                      onTap: _controller.show,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        color: Colors.white,
                        height: 71,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Marquee(
                                text:
                                    // startAfter: Duration(seconds: 2),
                                    controller.currentMusic == null
                                        ? ''
                                        : controller.currentMusic!.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                pauseAfterRound: Duration(seconds: 2),
                              ),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Container(
                              width: 150,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_previous),
                                  ),
                                  IconButton(
                                      onPressed: controller.onPlayPausePressed,
                                      icon: Icon(controller.isMusicPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_next),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    title: NamesOfAppBars(
                      title: '${pages[current_Index]}',
                    ),
                    leading: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Get.bottomSheet(
                          BottomApp(),
                        );
                      },
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Get.to(
                            () => SearchBar(),
                            transition: Transition.leftToRight,
                          );
                        },
                      ),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: pages[current_Index],
                  ),
                ],
              ),
            );
          },
        ),

        // drawer: AppDrawer(),
        // bottomNavigationBar:
      ),
    );
  }
}

void showSliderDialog({
  required BuildContext context,
  required String title,
  required int divisions,
  required double min,
  required double max,
  String valueSuffix = '',
  // TODO: Replace these two by ValueStream.
  required double value,
  required Stream<double> stream,
  required ValueChanged<double> onChanged,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: StreamBuilder<double>(
        stream: stream,
        builder: (context, snapshot) => Container(
          height: 100.0,
          child: Column(
            children: [
              Text('${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
                  style: TextStyle(
                      fontFamily: 'Fixed',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0)),
              Slider(
                divisions: divisions,
                min: min,
                max: max,
                value: snapshot.data ?? value,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//Code of BottomSheet
